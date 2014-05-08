package beluga.module.wallet;

// beluga core
import beluga.core.module.Module;

// beluga mods
import beluga.module.account.model.User;
import beluga.module.wallet.model.Currency;
import beluga.module.wallet.model.WalletModel;

// haxe
import haxe.ds.Option;

/**
 * Description of the Wallet
 *
 * @author Jeremy
 */
interface Wallet extends Module {
    // widget functions
    public function create(): Void;
    public function display(): Void;
    public function admin(): Void;
    public function createCurrency(args: { name: String, rate: String }): Void;
    public function removeCurrency(args: { id: Int }): Void;
    public function setSiteCurrency(args: {id: Int }): Void;

    // widget context functions
    public function getDisplayContext(): Dynamic;
    public function getDisplayAdminContext(): Dynamic;

    // tools functions
    public function getCurrentRealFunds(user: User): Option<Float>;
    public function getCurrentFunds(user: User, currency: Currency): Option<Float>;
    public function addRealFunds(user: User, value: Float): Bool;
    public function addFunds(user: User, currency: Currency, value: Float): Bool;
    public function consumeRealFunds(user: User, quantity: Float): Bool;
    public function consumeFunds(user: User, currency: Currency, quantity: Float): Bool;
    public function getCurrencys(): List<Dynamic>;
    public function getSiteCurrencyOrDefault(): Currency;
    public function userHasWallet(user: User): Bool;
    public function getUserWallet(user: User): Option<WalletModel>;
}