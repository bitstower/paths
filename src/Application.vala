public class Paths.Application : Gtk.Application {
    private Gtk.Window window;

    public Application () {
        Object (
            application_id: Constants.APP_ID,
            flags : ApplicationFlags.FLAGS_NONE
        );
    }

    public override void activate () {
        if (active_window != null) {
            return;
        }

        var provider = new Gtk.CssProvider ();
        provider.load_from_resource ("/com/bitstower/Paths/Application.css");
        Gtk.StyleContext.add_provider_for_screen (
            Gdk.Screen.get_default (),
            provider,
            Gtk.STYLE_PROVIDER_PRIORITY_APPLICATION
        );

        // var preferences = new SimpleAction ("preferences", null);
        // preferences.activate.connect (on_preferences);
        // add_action (preferences);

        // var about = new SimpleAction ("about", null);
        // about.activate.connect (on_about);
        // add_action (about);

        this.window = new MainWindow (this);
        this.window.present ();
    }

    // private void on_preferences () {
    //     var preferences = new PreferencesWindow (this, window, this.state);
    //     preferences.present ();
    // }

    // private void on_about () {
    //     var dialog = new Gtk.AboutDialog ();

    //     dialog.set_destroy_with_parent (true);
    //     dialog.set_transient_for (window);
    //     dialog.set_modal (true);
    //     dialog.logo_icon_name = Constants.APP_ID;
    //     dialog.program_name = _("Paths");
    //     dialog.comments = _("A mobile file manager.");
    //     dialog.authors = { "Tomasz Oponowicz" };
    //     dialog.artists = {"Tobias Bernard"};
    //     dialog.license_type = Gtk.License.GPL_3_0;
    //     dialog.website = "https://bitstower.com";
    //     dialog.website_label = _("Official webpage");

    //     dialog.run ();
    //     dialog.destroy ();
    // }

    public static int main (string[] args) {

        // Init internationalization support
        Intl.setlocale (LocaleCategory.ALL, "");
        string langpack_dir = Path.build_filename (Constants.APP_INSTALL_PREFIX, "share", "locale");
        Intl.bindtextdomain (Constants.APP_ID, langpack_dir);
        Intl.bind_textdomain_codeset (Constants.APP_ID, "UTF-8");
        Intl.textdomain (Constants.APP_ID);

        var app = new Application ();
        app.startup.connect (() => { Hdy.init (); });
        return app.run (args);
    }
}
