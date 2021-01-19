[GtkTemplate (ui = "/com/bitstower/Paths/MainWindow.ui")]
public class Paths.MainWindow : Hdy.ApplicationWindow {

    [GtkChild]
    private Gtk.Box titlebar;

    private Paths.MainHeaderBar main_header_bar;
    private Paths.NavHeaderBar nav_header_bar;

    public MainWindow (Gtk.Application app) {
        Object (
            application: app,
            icon_name: Constants.APP_ID,
            title: _("Paths")
        );

        this.main_header_bar = new Paths.MainHeaderBar ();
        this.nav_header_bar = new Paths.NavHeaderBar ();
        this.titlebar.pack_start (this.nav_header_bar, false);

        this.set_default_size (300, 500);
    }
}
