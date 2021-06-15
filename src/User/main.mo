actor {
  var ICP_user_supply = 100;
  var SDR_user_supply = 100;

  public func get_SDR_user() : async Nat {
      return SDR_user_supply
  };
  public func get_ICP_user() : async Nat {
    return ICP_user_supply;
  };

  public func transfer(currency : Text) : async Text {
        return currency # " has been transfered to Product";
    };
};