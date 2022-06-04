class MainDrawerService {
  MainDrawerService();

  static open(
      double xOffset, double yOffset, double scaleFactor, bool isDrawerOpen) {
    xOffset = 230;
    yOffset = 150;
    scaleFactor = 0.6;
    isDrawerOpen = true;
  }

  static close(
      double xOffset, double yOffset, double scaleFactor, bool isDrawerOpen) {
    xOffset = 0;
    yOffset = 0;
    scaleFactor = 1;
    isDrawerOpen = false;
  }
}
