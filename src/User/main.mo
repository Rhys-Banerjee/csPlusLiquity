import Product "canister:Product";


actor {
  var ICP_user_supply = 100;
  var SDR_user_supply = 10000;

  public func get_SDR_user() : async Nat {
      return SDR_user_supply
  };
  public func get_ICP_user() : async Nat {
    return ICP_user_supply;
  };
  public func Increase_ICP(n : Nat) {
    ICP_user_supply += n;
  };
  public func Increase_SDR(n : Nat) {
    SDR_user_supply += n;
  };
  public func transfer_ICP(n : Nat) {
    // User ICP supply lowers
    ICP_user_supply -= n;
    // Product ICP supply should increase, and User SDR supply should increase
    Product.transferSDR_fromProd(n);
    SDR_user_supply += n;

  };
  public func redeem_ICP(n : Nat) {
    // User ICP supply lowers
    ICP_user_supply += n;
    // Product ICP supply should increase, and User SDR supply should increase
    Product.transferICP_fromProd(n);
    SDR_user_supply -= n;

  };
};