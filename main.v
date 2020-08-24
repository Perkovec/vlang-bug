module main

import vex.server // or nedpals.vex.server
import vex.ctx // or nedpals.vex.ctx

fn main() {
    mut s := server.new()

    s.get('/', fn (req ctx.Req, mut res ctx.Resp) {
        res.send_file('index.html', 200)
    })

    s.serve(6789)
}
