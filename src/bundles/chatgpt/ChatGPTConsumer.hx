package bundles.chatgpt;

import esb.core.IBundle;
import esb.common.Uri;
import esb.core.IConsumer;
import esb.logging.Logger;
import esb.core.Bus.*;
import promises.Promise;

@:keep
class ChatGPTConsumer implements IConsumer {
    private static var log:Logger = new Logger("bundles.chatgpt.ChatGPTConsumer");

    public var bundle:IBundle;
    public function start(uri:Uri) {
        log.info('creating chatgpt consumer for ${uri.toString()}');
        from(uri, (uri, message) -> {
            return new Promise((resolve, reject) -> {
                resolve(message);
            });
        });
    }
}