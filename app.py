from flask import Flask, request, jsonify

app = Flask(__name__)

#Flask(__name__) creates an instance of the Flask class. This instance is your WSGI (Web Server Gateway Interface) application that you can use to handle requests and responses.
#2. Parameter __name__
#The __name__ argument is a special Python variable that represents the name of the current module (or script).
#In Flask, the __name__ parameter is used to determine the root path of the application, which is useful for finding resources like templates and static files.
#3. Application Configuration
#This instance, stored in the variable app, is used to configure the application, define routes, and manage the application’s components like views, templates, and static files.

# Sample data: a dictionary of ingredients to recipes
recipes_db = {
    "pasta": ["Spaghetti Carbonara", "Pasta Primavera"],
    "chicken": ["Chicken Alfredo", "Chicken Parmesan"],
    "tomato": ["Tomato Soup", "Tomato Pasta"],
}

def suggest_recipes(ingredients):  #define a function that checks given ingredients to find if 
    suggestions = []
    for ingredient in ingredients: #ingredient is in the fake db if yes
        if ingredient in recipes_db:
            suggestions.extend(recipes_db[ingredient]) #add the recipe to the suggestion array
    return suggestions

#The @app.route('/get-recipes', methods=['POST']) is a decorator in Flask
#  that maps a specific URL (/get-recipes) to a Python function. 
# This means that when a client
#  sends a request to the /get-recipes URL, Flask will execute the associated function get_recipes.
@app.route('/get-recipes', methods=['POST'])
def get_recipes():
    # Extract JSON data from the POST request body
    data = request.json 

     # Assume 'ingredients' is a key in the incoming JSON data
    ingredients = data.get('ingredients', [])

 # Process the ingredients and generate a list of recipes (dummy example)
    suggested_recipes = suggest_recipes(ingredients)

     # Return the suggested recipes as a JSON response
    return jsonify(suggested_recipes)

if __name__ == '__main__':
    app.run(debug=True)

#1. __name__ in Python
#__name__ is a special built-in variable in Python.
#When a Python script is run directly (e.g., python app.py), the __name__ variable is automatically set to the string "__main__".
#When a script is imported as a module in another script, the __name__ variable is set to the name of the script/module.
#2. Purpose of if __name__ == '__main__':
#The if __name__ == '__main__': construct is used to ensure that certain code is only executed when the script is run directly, and not when it is imported as a module.
#This is particularly useful for testing or running the main part of a script, without executing that part when the script is imported elsewhere.
#3. app.run(debug=True)
#app.run(): This method starts the Flask development server. It is responsible for running the application on a local server, allowing you to test and develop the app.
#debug=True: This option enables the debug mode in Flask. When debug=True