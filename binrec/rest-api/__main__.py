if __name__ == "__main__":
    from binrec.core import init_binrec

    from .app import app, setup_api

    init_binrec()

    setup_api()

    app.run(host='0.0.0.0', port=8080, debug=True)
