class ServiceRequestFunction {
  isNull(dynamic stuff) {
    if (stuff == '' || stuff.length == 0) {
      return true;
    } else {
      return false;
    }
  }

  isComplete(String state) {
    if (state == 'COMPLETED') {
      return true;
    } else {
      return false;
    }
  }

  isOngoing(String state) {
    if (state == 'ONGOING') {
      return true;
    } else {
      return false;
    }
  }

  isPending(String state) {
    if (state == 'PENDING') {
      return true;
    } else {
      return false;
    }
  }

  isRated(dynamic ratedUser) {
    if (ratedUser.ratings.length == 1) {
      // setState(() {

      // });
      return true;
    } else if (ratedUser.ratings.length == 2) {
      return false;
    } else {
      return true;
    }
  }

  isProviderRated(dynamic ratedUser, String provider) {
    if (ratedUser.ratings.length == 1 &&
        ratedUser.ratings[0].recipient == provider) {
      return true;
    } else if (ratedUser.ratings.length == 2 &&
        (ratedUser.ratings[0].recipient == provider ||
            ratedUser.ratings[1].recipient == provider)) {
      return true;
    } else {
      return false;
    }
  }

  isRequestorRated(dynamic ratedUser, String requestor) {
    if (ratedUser.ratings.length == 1 &&
        ratedUser.ratings[0].recipient == requestor) {
      return true;
    } else if (ratedUser.ratings.length == 2 &&
        (ratedUser.ratings[0].recipient == requestor ||
            ratedUser.ratings[1].recipient == requestor)) {
      return true;
    } else {
      return false;
    }
  }
}
