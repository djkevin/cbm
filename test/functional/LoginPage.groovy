import geb.Page

class LoginPage extends Page {

    static url = "login/auth"

    static at = { title == "Login" }

    static content = {
        loginForm { $("form") }
        loginButton { $("input", value: "Login") }
    }
}