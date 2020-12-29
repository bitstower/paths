[GtkTemplate (ui = "/com/bitstower/Paths/MainWindow.ui")]
public class Paths.MainWindow : Hdy.ApplicationWindow {

    public MainWindow (Gtk.Application app) {
        Object (
            application: app,
            icon_name: Constants.APP_ID,
            title: _("Paths")
        );
    }
}
