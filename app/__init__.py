# -*- coding: utf-8 -*-

import falcon


class HelloWorld(object):
    def on_get(self, req, res):
        """TODO: Docstring for on_get.

        :req: TODO
        :res: TODO
        :returns: TODO

        """
        res.status = falcon.HTTP_200
        res.body = ('Hello World!')


app = falcon.API()
app.add_route('/', HelloWorld())