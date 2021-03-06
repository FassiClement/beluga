// Copyright 2014 The Beluga Project Developers. See the LICENCE.md
// file at the top-level directory of this distribution and at
// http://haxebeluga.github.io/licence.html.
//
// Licensed under the MIT License.
// This file may not be copied, modified, or distributed
// except according to those terms.

package beluga.module.notification.api;

import haxe.web.Dispatch;

import beluga.Beluga;
import beluga.BelugaException;

import beluga.module.notification.Notification;

class NotificationApi {
    public var beluga : Beluga;
    public var module : Notification;

    public function new(beluga : Beluga, module) {
        this.beluga = beluga;
        this.module = module;
    }

    public function doDefault() {
        module.triggers.defaultNotification.dispatch();
    }

    public function doPrint(args : {id : Int}) {
        module.print(args);
    }

    public function doCreate(args : {title : String, text : String, user_id: Int}) {
        module.create(args);
    }

    public function doDelete(args : {id : Int}) {
        module.delete(args);
    }
}
