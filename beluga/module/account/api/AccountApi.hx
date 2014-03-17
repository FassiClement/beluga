package beluga.module.account.api;

import beluga.core.Beluga;
import beluga.core.Widget;
import beluga.core.BelugaException;
import beluga.module.account.Account;
import beluga.module.account.model.User;

class AccountApi 
{
	var beluga : Beluga;
	var account : Account;

	public function new(beluga : Beluga, account : Account) {
		this.beluga = beluga;
		this.account = account;
	}

	//
	//Login
	//
	public function doLogin() {
	}

	public function doLoginPage() {
        var loginBox : Widget = account.getWidget("login"); //Generic method for all modules
        loginBox.context.login = "Toto"; // For instance, it would fill the username field with Toto
        var subscribeBox : Widget = account.getWidget("subcribe");
        var html : String = loginBox.render() + subscribeBox.render();
        Sys.print(html); 
	}

	//
	//Subscription
	//
	public function doSubscribe(args : { login : String, password : String }) {
		beluga.triggerDispatcher.dispatch("beluga_account_subscribe", [args.login, args.password]);
	}

	public function doDefault() {
        trace("Account default page");
	}

}
