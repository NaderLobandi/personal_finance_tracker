
# README

## Personal Finance Tracker Web Application

  

This is a web application for personal financial management using Flask and MySQL. Following these detailed steps should help you successfully set up and run the Personal Finance Tracker Web App on your local machine or server environment.

  

### Prerequisites for MacOS

  

- Install Python: The application is built in Python, so the first step is to ensure that Python is installed on your system. You can download and install Python from the [official website](https://www.python.org/downloads/macos/) or via [Homebrew](https://brew.sh/). To check the version of your Python paste the following command in your terminal:

	``` python --version ```

	If not installed, use Homebrew by running ```brew install python```

  

- Install Git (Optional): Git usually comes pre-installed on macOS. To Verify paste the following command in your terminal:

	``` git --version ```

  

	If you need to install or update it, use Homebrew:

  

	``` brew install git ```

  

- Install MySQL: This is the database management system used for the app. Use Homebrew to install MySQL with:

  

	``` brew install mysql ```

  

	Start MySQL with ``` brew services start mysql ```

  

### Prerequisites for Windows

  

- Install Python: Download Python from the [official website](https://www.python.org/downloads/windows/). Run the installer and make sure to check ```Add Python to PATH``` during installation.

- Install Git (Optional): Download Git from [Git SCM](https://git-scm.com/download/win). Follow the installation process, and ensure Git is added to PATH.

- Install MySQL: Download the MySQL installer from the [MySQL website](https://dev.mysql.com/downloads/installer/).

  

	Choose the appropriate version and install MySQL. Remember the 'root' password you set during installation.


### 1. Setting Up a Virtual Environment
A virtual environment in Python is a self-contained directory containing a Python installation for a specific version, along with additional packages. This setup allows for isolated environments for different projects. To create a virtual environment, navigate to your project directory and run:

   ``` python -m venv venv_name ```
   
Replace ```venv_name``` with your desired name for the virtual environment.

- Activating the Virtual Environment: Before installing the project dependencies, you need to activate the virtual environment.

	On macOS/Linux:

  

	``` source venv_name/bin/activate ```

  

	On Windows:

  

	``` venv_name\Scripts\activate ```

  

### 2. Installing Dependencies

  

After activating the virtual environment, install these packages using pip (Python's package installer):

  

``` pip install -r requirements.txt ```

  

### 3. Configuring the Application

  

The ```config.json``` file contains configuration settings for your application. This file is crucial for setting up parameters such as database connection details. You will need to edit this file to match your local or server setup. This typically involves setting the database name, username, password, and host.

  

### 4. Cloning the Repository (Optional)

  

If you're setting up the project from a remote repository (like GitHub), you can clone it using:

  

``` git clone https://github.com/brikjr/personal_finance_tracker ```

  

Replace ```yourusername``` with your Github username. Navigate to the project directory after cloning.

  

### 5. Running the Web Application

  

With the dependencies installed and the configuration set, you can start the application by running the main script, ```app.py``` in Flask projects. In the terminal, execute:

  

``` python app.py ```

  

### 6. Accessing the App

  

Once the application is running, you can access it through a web browser at the specified address for local development:

  

[http://127.0.0.1:5000](http://127.0.0.1:5000)

  

### 7. Database Setup

  

Ensure that MySQL server is running on your system or server. You'll also need to create a database and tables as defined in the SQL schema dump file ```CS5200PROJECTDUMP.sql```. This involves executing the SQL statements in the file to set up the necessary database structure. Remember to replace placeholder texts like ```venv_name```, ```yourusername```, and configuration details in ```config.json``` with actual values before proceeding.
