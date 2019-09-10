#import "GatewayManager.h"
#import "PKPaymentConverter.h"

@implementation GatewayManager

+ (NSArray *)getSupportedGateways
{
    NSMutableArray *supportedGateways = [NSMutableArray array];

    [supportedGateways addObject:@"cloudpayments"];
    return [supportedGateways copy];
}

- (void)configureGateway:(NSDictionary *_Nonnull)gatewayParameters
      merchantIdentifier:(NSString *_Nonnull)merchantId
{
    //
}

- (void)createTokenWithPayment:(PKPayment *_Nonnull)payment
                    completion:(void (^_Nullable)(NSString * _Nullable token, NSError * _Nullable error))completion
{
    NSString *cryptogram = [PKPaymentConverter convertToString:payment];
    completion(cryptogram, nil);
}

@end
