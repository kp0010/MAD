import 'package:flutter/material.dart'; 
import 'package:form_field_validator/form_field_validator.dart'; 

void main() { 
  runApp(MaterialApp(home: HomePage()));
}

class HomePage extends StatefulWidget { 
  @override 
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> { 
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  void validate() { 
    if(formKey.currentState!.validate()){ 
      print("Validation passed");
    } else { 
      print("Validation failed");
    } 
  }

  String? emailValidate(value) {
    if(value!.isEmpty) {
      return "Email cannot be empty";
    } else if(!RegExp(r'^[a-zA-Z0-9]+@[a-zA-Z0-9]+\.[a-zA-Z]').hasMatch(value)) {
      return "Enter a valid email address";
    }
    return null;
  }

  @override 
  Widget build(BuildContext context) { 
    return Scaffold( 
      appBar: AppBar( 
        title: Text("Login Page"),
      ), 
      body: Padding( 
        padding: EdgeInsets.all(25.0), 
        child: Center( 
          child: Form( 
            key: formKey, 
            child: Column( 
              children: <Widget>[ 
                TextFormField( 
                  decoration: InputDecoration( 
                    labelText: "Email", 
                    border: OutlineInputBorder()
                  ), 
                  validator: emailValidate, 
                ), 
                Padding( 
                  padding: EdgeInsets.only(top: 20.0), 
                  child: TextFormField( 
                    decoration: InputDecoration( 
                      labelText: "Password", 
                      border: OutlineInputBorder() 
                    ), 
                    validator: (val) { 
                      if(val!.isEmpty) { 
                        return "Password is required"; 
                      } else if(val.length < 6) { 
                        return "Password must be at least 6 characters"; 
                      } else { 
                        return null; 
                      } 
                    }, 
                  ), 
                ), 
                Padding( 
                  padding: EdgeInsets.only(top: 20.0), 
                  child: ElevatedButton( 
                    onPressed: validate, 
                    child: Text("Login"),
                  ), 
                ), 
              ], 
            ), 
          ), 
        ), 
      ),
    ); 
  }
}
