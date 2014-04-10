package beluga.module.ticket.api;

// Beluga core
import beluga.core.Beluga;
import beluga.core.Widget;
import beluga.core.BelugaException;

// Beluga mods
import beluga.module.ticket.Ticket;

// Haxe
import haxe.web.Dispatch;

class TicketApi 
{
    var beluga : Beluga;
    var ticket : Ticket;

    public function new(beluga : Beluga, ticket : Ticket) {
        this.beluga = beluga;
        this.ticket = ticket;
    }

    public function doBrowse(): Void {
        beluga.triggerDispatcher.dispatch("beluga_ticket_browse");   
    }

    public function doShow(args: { id: Int }): Void {
        beluga.triggerDispatcher.dispatch("beluga_ticket_show", [args]);   
    }

    public function doClose(args: { id: Int }): Void {
        beluga.triggerDispatcher.dispatch("beluga_ticket_close", [args]);   
    }

    public function doReopen(args: { id: Int }): Void {
        beluga.triggerDispatcher.dispatch("beluga_ticket_reopen", [args]);   
    }

    public function doComment(args: { id: Int, message: String }): Void {
        beluga.triggerDispatcher.dispatch("beluga_ticket_comment", [args]);
    }

    public function doCreate(): Void {
        beluga.triggerDispatcher.dispatch("beluga_ticket_create");
    }

    public function doSubmit(args: { title: String, message: String, assignee: String }): Void {
        beluga.triggerDispatcher.dispatch("beluga_ticket_submit", [args]);
    }
    
    public function doAdmin(): Void {
        beluga.triggerDispatcher.dispatch("beluga_ticket_admin");
    }

    public function doDeletelabel(args: { id: Int }): Void {
        beluga.triggerDispatcher.dispatch("beluga_ticket_deletelabel", [args]);   
    }

    public function doAddlabel(args: { name: String }): Void {
        beluga.triggerDispatcher.dispatch("beluga_ticket_addlabel", [args]);   
    }

    public function doDefault(): Void {
        trace("Ticket default page");
    }

    public function doCss(d: Dispatch): Void {
        d.dispatch(new CssApi());
    }

}