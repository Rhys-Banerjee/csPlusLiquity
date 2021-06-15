actor {
  public func mint() : async Text {
    return "SDR has been created";
  };
  public func burn() : async Text {
    return "SDR has been burned";
  };
  public func transfer(currency : Text) : async Text {
        return currency # " has been transfered to Product";
    };
};