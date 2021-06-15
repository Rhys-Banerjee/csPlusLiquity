actor {
 // import User "canister:User";
  var ICP_product_supply = 100;
  var SDR_product_supply = 100;

  public func mint_SDR_product(n: Nat) {
    SDR_product_supply += n;
  };
  public func get_SDR_product() : async Nat {
    return SDR_product_supply;
  };
  public func get_ICP_product() : async Nat {
    return ICP_product_supply;
  };
  public func burn_SDR_product(n: Nat) {
    SDR_product_supply -= n;
  };
  public func transfer( n : Text) : async Text {
        // burn n SDR tokens
        // Product ICP portfolio decreases by n tockens.
        // User ICP portfolio increases by n tokens.
        return n # " ICP tokens has been transfered to User";
    };
//   public func transferr(
//       receiver : shared () -> async (),
//       amount : Nat) : async { refunded : Nat } {
//           Cycles.add(amount);
//           await receiver();
//           { refunded = Cycles.refunded() };
//       };
  
};