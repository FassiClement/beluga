package beluga.module.forum.model;

import sys.db.Object;
import sys.db.Types;

import beluga.module.account.model.User;

@:table("beluga_frm_fav_mess")
@:id(id)
@:index(user, message)
class FavoriteMessage extends Object {
  public var id : SId;
  public var message : Message;
  public var user : User;
}