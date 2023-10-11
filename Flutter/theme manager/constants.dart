import 'package:nutriwest_app/model/title_model.dart';

class SVG {
  static const String appBarBackground = "assets/svgs/appbar_background.svg";
  static const String freeTrailBanner = "assets/svgs/free_trail_banner.svg";
  static const String monthSpecialBanner =
      "assets/svgs/month_special_banner.svg";
  static const String specialBanner = "assets/svgs/special_banner.svg";
  static const String thankyouSmile = "assets/svgs/thankyou_smile.svg";
  static const String backgroundLogo = "assets/svgs/background_logo.svg";
  static const String notification = "assets/svgs/notification.svg";
  static const String filter = "assets/svgs/filter.svg";
  static const String home = "assets/svgs/home.svg";
}

class Images {
  static const String splashImage = 'assets/images/splash_image.png';
  static const String topBackgroundImageWithLogo =
      'assets/images/top_background.png';
  static const String topBackgroundImageWithoutLogo =
      'assets/images/background_top.png';
  static const String appbarBackgroundImage =
      'assets/images/appbar_background.png';
  static const String detailBg = 'assets/images/detailBg.png';
  static const String favorite = "assets/images/favorite.png";
  static const String notFavorite = "assets/images/not_favorite.png";
  static const String calender = "assets/images/calender.png";
  static const String matches = "assets/images/matches.png";
  static const String settings = "assets/images/settings.png";
  static const String favorites = "assets/images/favorites.png";
  static const String imagePlaceHolder = "assets/images/image_place_holder.png";
  static const String cartAppbar = "assets/images/cart_appbar.png";
  static const String thankyou = "assets/images/thankyou_icon.png";
  static const String webinarThumbnail = "assets/images/webinar_thumbnail.png";
  static const String itemNotFound = "assets/images/item_not_found.png";
  static const String eventNotFound = "assets/images/event_not_found.png";
  static const String emptyCart = "assets/images/empty_cart.png";
  static const String noProductImage = "assets/images/no_product_image.png";
  static const String productPlaceholderImage = "assets/images/bottle.png";
  static const String webinarErrorPlaceholderImage =
      "assets/images/webinar_error_placeholder.png";
}

class Constants {
  //Drawer Items
  static List drawerItems = [
    {"name": "Home"},
    {"name": "Products"},
    {"name": "Events"},
    {"name": "Distributors"},
    {"name": "About Us"},
    {"name": "Contact Us"},
    {"name": "Profile"},
    // {"name": "Language"},
  ];

  //Languages
  static List languages = [
    {"name": "Chinese"},
    {"name": "Dutch"},
    {"name": "French"},
    {"name": "Greek"},
    {"name": "Italian"},
    {"name": "Portuguese"},
    {"name": "Spanish"},
  ];

  //create provider account titles
  static List titles = [
    // TitleModel(name: "Select title"),
    TitleModel(name: "Mr."),
    TitleModel(name: "Mrs."),
    TitleModel(name: "Miss."),
    TitleModel(name: "Dr."),
    TitleModel(name: "Ms."),
  ];

  //search product category titles
  static List productCategoryTitles = [
    TitleModel(name: "Nutri-West Products"),
    TitleModel(name: "Homeopathic Products"),
    TitleModel(name: "Herbal Tincture Products"),
  ];
}
