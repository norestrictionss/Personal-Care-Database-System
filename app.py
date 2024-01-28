from flask import Flask, render_template, request, redirect, url_for, session
import pyodbc
from datetime import datetime
import random

app = Flask(__name__)

# REMINDER: Connection string must be customized accordingly with the information of the user.
cnxn = pyodbc.connect("Driver={ODBC Driver 17 for SQL Server};"
                      "Server=DESKTOP-TK7D1F9;"
                      "Database=PersonalCareDatabase2;"
                      "Trusted_Connection=yes;", autocommit = True)
cursor = cnxn.cursor()


def fetch_full_appointments():
    # Fetch data from the database
    cursor.execute("SELECT * FROM list_customers_and_appointments")
    rows = cursor.fetchall()
    full_appointments = []
    # Full Appointments
    for i in range(len(rows)):
        one_appointment = []
        for j in range(len(rows[i])):
            one_appointment.append(rows[i][j])
        full_appointments.append(one_appointment)
    # Free Appointments
    cursor.execute("SELECT * FROM AppointmentsWithNoCustomers")
    rows = cursor.fetchall()
    free_appointments = []
    for i in range(len(rows)):
        one_appointment = []
        for j in range(len(rows[i])):
            one_appointment.append(rows[i][j])
        free_appointments.append(one_appointment)

    return {"full_appointments": full_appointments,
            "free_appointments": free_appointments}



def fetch_employees():
    cursor.execute("SELECT * FROM list_salesperson_sales_info")
    rows = cursor.fetchall()
    salesperson = []
    # Full Appointments
    for i in range(len(rows)):
        one_salesperson = []
        for j in range(len(rows[i])):
            one_salesperson.append(rows[i][j])
        salesperson.append(one_salesperson)
    cursor.execute("SELECT * FROM list_beautycarespecialist_info")
    bcs = []
    rows = cursor.fetchall()
    for i in range(len(rows)):
        one_bcs = []
        for j in range(len(rows[i])):
            one_bcs.append(rows[i][j])
        bcs.append(one_bcs)
    
    return {"salesperson": salesperson,
            "beautycarespecialists": bcs}


def fetch_orders():
    cursor.execute("SELECT * FROM OrderHistory")
    rows = cursor.fetchall()
    orders = []
    # Full Appointments
    for i in range(len(rows)):
        one_order = []
        for j in range(len(rows[i])):
            one_order.append(rows[i][j])
        orders.append(one_order)
    return orders



def fetch_products():
    cursor.execute("SELECT * FROM Product")
    rows = cursor.fetchall()
    products = []
    # Full Appointments
    for i in range(len(rows)):
        one_product = []
        for j in range(len(rows[i])):
            one_product.append(rows[i][j])
        products.append(one_product)
    return products


@app.route('/employees')
def employees():
    employees = fetch_employees()
    return render_template("employees.html", salesperson= employees["salesperson"], beautycarespecialists = employees["beautycarespecialists"])

@app.route('/')
def index():
    return render_template('header.html')

@app.route("/appointments")
def appointments():
    appointments= fetch_full_appointments()
    return render_template('appointments.html', full_appointments = appointments["full_appointments"], free_appointments = appointments["free_appointments"])


@app.route("/set_appointment", methods = ["GET", "POST"])
def set_appointment():
    return render_template("customer_info.html")


@app.route("/products", methods = ["GET"])
def products():
    products = fetch_products()
    return render_template("products.html", products = products)

@app.route('/order', methods = ["GET", "POST"])
def order_product():

    return render_template("order.html")


@app.route('/orderhistory', methods = ['GET', 'POST'])
def orderhistory():
    orders = fetch_orders()
    return render_template("orderhistory.html", orders = orders)


bcs_managers = [2, 3]

salesperson_managers = [4, 5]

@app.route('/add_bcs', methods = ["POST"])
def add_bcs():
    if request.method == "POST":
        first_name = request.form.get('first_name')
        last_name = request.form.get('last_name')
        contact_number = request.form.get('contact_number')
        employee_address = request.form.get('employee_address')
        hired_date = datetime.now().strftime("%Y-%m-%d")
        specialty = request.form.get('specialty')
        manager_id = random.choice(bcs_managers) # Manager is randomly selected between all bcs managers.
        department_id = 2
        cursor.execute("{CALL addEmployee (?, ?, ?, ?, ?, ?, ?)}", (manager_id, first_name, last_name, hired_date, contact_number, 
        employee_address, department_id)) # setAppointment Procedure
        rows = cursor.execute("SELECT EmployeeID FROM Employee WHERE ContactNumber = ? AND EmployeeAddress = ?", (contact_number, employee_address))
        employee_id = int(cursor.fetchone()[0])

        cursor.execute("{CALL addBeautyCareSpecialist (?, ?)}", (employee_id, specialty))
        print(employee_id)
        return redirect(url_for('employees'))


@app.route('/handle_button', methods=['POST'])
def handle_button():
    if request.method == 'POST':
 
        button_action = request.form.get('button_action_one')
        button_action_three = request.form.get('button_action_three')
        button_action_four = request.form.get('completeAppointment')
        button_action_five = request.form.get('button_action_five')
        button_action_six = request.form.get('completeOrder')
        button_action_seven = request.form.get('button_action_seven')

        if button_action == "Appointments":
            return redirect(url_for('appointments'))
        elif button_action_three == "Employees":
            return redirect(url_for('employees'))

        elif button_action_four == "completeAppointment":
            # Call the stored procedure with parameters
            full_name = request.form.get('full_name')
            contact_number = request.form.get('contact_number')
            appointment_id = request.form.get('appointment_id')
            cursor.execute("{CALL setAppointment (?, ?, ?)}", (full_name, contact_number, appointment_id)) # setAppointment Procedure
            cnxn.commit() # It raises an error if condition is not met
            return redirect(url_for('index'))

        elif button_action_five == "Products":
            return redirect(url_for('products'))

        elif button_action_six == "completeOrder":
            full_name = request.form.get('full_name')
            contact_number = request.form.get('contact_number')
            employee_id =  request.form.get('employee_id')
            product_id = request.form.get('product_id')
            order_date = datetime.now().strftime("%Y-%m-%d")
            cursor.execute("{CALL OrderProduct (?, ?, ?, ?, ?)}", (order_date, employee_id, product_id, full_name, contact_number)) # OrderProduct Procedure
        
        elif button_action_seven == "Orders":
            return redirect(url_for('orderhistory'))
    return redirect(url_for('index'))




if __name__ == "__main__":
    from waitress import serve
    serve(app, host="0.0.0.0", port=8080)
