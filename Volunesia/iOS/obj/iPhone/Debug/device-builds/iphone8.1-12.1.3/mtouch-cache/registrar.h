#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wtypedef-redefinition"
#pragma clang diagnostic ignored "-Wobjc-designated-initializers"
#define DEBUG 1
#include <stdarg.h>
#include <objc/objc.h>
#include <objc/runtime.h>
#include <objc/message.h>
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
#import <CoreGraphics/CoreGraphics.h>

@class UIApplicationDelegate;
@class UIKit_UIControlEventProxy;
@class Foundation_NSDispatcher;
@class __MonoMac_NSSynchronizationContextDispatcher;
@class __Xamarin_NSTimerActionDispatcher;
@class Foundation_NSAsyncDispatcher;
@class __MonoMac_NSAsyncSynchronizationContextDispatcher;
@class AppDelegate;
@class EmailRegistrationViewController;
@class NPTypeSelectionController;
@class RegistrationViewController;
@class UserTypeSelectionController;
@class ViewController;
@class EstablishedNonprofitViewController;
@class __NSObject_Disposer;
@class FIRActionCodeInfo;
@class FIRActionCodeSettings;
@class FIRAdditionalUserInfo;
@class FIRAuthCredential;
@class FIRAuthDataResult;
@class FIRAuthSettings;
@class FIRAuthTokenResult;
@protocol FIRAuthUIDelegate;
@class ApiDefinition__Firebase_Auth_AuthUIDelegate;
@class FIREmailAuthProvider;
@class FIRFacebookAuthProvider;
@class FIRGitHubAuthProvider;
@class FIRGoogleAuthProvider;
@class FIROAuthProvider;
@class FIRPhoneAuthCredential;
@class FIRTwitterAuthProvider;
@protocol FIRUserInfo;
@class FIRUserMetadata;
@class FIRAuth;
@class FIRPhoneAuthProvider;
@class FIRUser;
@class FIRUserProfileChangeRequest;
@class FIRApp;
@class FIRAnalyticsConfiguration;
@class FIRConfiguration;
@class FIROptions;
@class OpenTK_Platform_iPhoneOS_CADisplayLinkTimeSource;
@class OpenTK_Platform_iPhoneOS_iPhoneOSGameView;
@class FIRDatabaseQuery;
@class FIRDatabaseReference;
@class FIRDataSnapshot;
@class FIRMutableData;
@class FIRDatabase;
@class FIRServerValue;
@class FIRTransactionResult;

@interface UIApplicationDelegate : NSObject<UIApplicationDelegate> {
}
	-(id) init;
@end

@interface AppDelegate : NSObject<UIApplicationDelegate, UIApplicationDelegate> {
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(UIWindow *) window;
	-(void) setWindow:(UIWindow *)p0;
	-(BOOL) application:(UIApplication *)p0 didFinishLaunchingWithOptions:(NSDictionary *)p1;
	-(void) applicationWillResignActive:(UIApplication *)p0;
	-(void) applicationDidEnterBackground:(UIApplication *)p0;
	-(void) applicationWillEnterForeground:(UIApplication *)p0;
	-(void) applicationDidBecomeActive:(UIApplication *)p0;
	-(void) applicationWillTerminate:(UIApplication *)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end

@interface EmailRegistrationViewController : UIViewController {
}
	@property (nonatomic, assign) UIButton * BackButton;
	@property (nonatomic, assign) UIImageView * BackgroundImage;
	@property (nonatomic, assign) UILabel * ConfirmPasswordLabel;
	@property (nonatomic, assign) UITextField * ConfirmPasswordTextfield;
	@property (nonatomic, assign) UIButton * ContinueButton;
	@property (nonatomic, assign) UILabel * EmailLabel;
	@property (nonatomic, assign) UITextField * EmailTextfield;
	@property (nonatomic, assign) UILabel * LoginRequestLabel;
	@property (nonatomic, assign) UITextField * PasswordTextfield;
	@property (nonatomic, assign) UILabel * PaswordLabel;
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(UIButton *) BackButton;
	-(void) setBackButton:(UIButton *)p0;
	-(UIImageView *) BackgroundImage;
	-(void) setBackgroundImage:(UIImageView *)p0;
	-(UILabel *) ConfirmPasswordLabel;
	-(void) setConfirmPasswordLabel:(UILabel *)p0;
	-(UITextField *) ConfirmPasswordTextfield;
	-(void) setConfirmPasswordTextfield:(UITextField *)p0;
	-(UIButton *) ContinueButton;
	-(void) setContinueButton:(UIButton *)p0;
	-(UILabel *) EmailLabel;
	-(void) setEmailLabel:(UILabel *)p0;
	-(UITextField *) EmailTextfield;
	-(void) setEmailTextfield:(UITextField *)p0;
	-(UILabel *) LoginRequestLabel;
	-(void) setLoginRequestLabel:(UILabel *)p0;
	-(UITextField *) PasswordTextfield;
	-(void) setPasswordTextfield:(UITextField *)p0;
	-(UILabel *) PaswordLabel;
	-(void) setPaswordLabel:(UILabel *)p0;
	-(void) prepareForSegue:(UIStoryboardSegue *)p0 sender:(NSObject *)p1;
	-(void) BackButton_TouchUpInside:(UIButton *)p0;
	-(void) ContinueButton_TouchUpInside:(UIButton *)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
@end

@interface NPTypeSelectionController : UIViewController {
}
	@property (nonatomic, assign) UIButton * BackButton;
	@property (nonatomic, assign) UIImageView * BackgroundImage;
	@property (nonatomic, assign) UIButton * EstablishedButton;
	@property (nonatomic, assign) UIButton * LocalButton;
	@property (nonatomic, assign) UILabel * QuestionLabel;
	@property (nonatomic, assign) UIButton * SchoolButton;
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(UIButton *) BackButton;
	-(void) setBackButton:(UIButton *)p0;
	-(UIImageView *) BackgroundImage;
	-(void) setBackgroundImage:(UIImageView *)p0;
	-(UIButton *) EstablishedButton;
	-(void) setEstablishedButton:(UIButton *)p0;
	-(UIButton *) LocalButton;
	-(void) setLocalButton:(UIButton *)p0;
	-(UILabel *) QuestionLabel;
	-(void) setQuestionLabel:(UILabel *)p0;
	-(UIButton *) SchoolButton;
	-(void) setSchoolButton:(UIButton *)p0;
	-(void) prepareForSegue:(UIStoryboardSegue *)p0 sender:(NSObject *)p1;
	-(void) BackButton_TouchUpInside:(UIButton *)p0;
	-(void) EstablishedButton_TouchUpInside:(UIButton *)p0;
	-(void) LocalButton_TouchUpInside:(UIButton *)p0;
	-(void) SchoolButton_TouchUpInside:(UIButton *)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
@end

@interface RegistrationViewController : UIViewController {
}
	@property (nonatomic, assign) UIButton * BackButton;
	@property (nonatomic, assign) UIImageView * BackgroundImage;
	@property (nonatomic, assign) UIButton * ContinueButton;
	@property (nonatomic, assign) UILabel * FirstNameLabel;
	@property (nonatomic, assign) UITextField * FirstNameTextfield;
	@property (nonatomic, assign) UILabel * LastNameLabel;
	@property (nonatomic, assign) UITextField * LastNameTextfield;
	@property (nonatomic, assign) UILabel * QuestionLabel;
	@property (nonatomic, assign) UILabel * StatementLabel;
	@property (nonatomic, assign) UITextView * StoryTextView;
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(UIButton *) BackButton;
	-(void) setBackButton:(UIButton *)p0;
	-(UIImageView *) BackgroundImage;
	-(void) setBackgroundImage:(UIImageView *)p0;
	-(UIButton *) ContinueButton;
	-(void) setContinueButton:(UIButton *)p0;
	-(UILabel *) FirstNameLabel;
	-(void) setFirstNameLabel:(UILabel *)p0;
	-(UITextField *) FirstNameTextfield;
	-(void) setFirstNameTextfield:(UITextField *)p0;
	-(UILabel *) LastNameLabel;
	-(void) setLastNameLabel:(UILabel *)p0;
	-(UITextField *) LastNameTextfield;
	-(void) setLastNameTextfield:(UITextField *)p0;
	-(UILabel *) QuestionLabel;
	-(void) setQuestionLabel:(UILabel *)p0;
	-(UILabel *) StatementLabel;
	-(void) setStatementLabel:(UILabel *)p0;
	-(UITextView *) StoryTextView;
	-(void) setStoryTextView:(UITextView *)p0;
	-(void) prepareForSegue:(UIStoryboardSegue *)p0 sender:(NSObject *)p1;
	-(void) BackButton_TouchUpInside:(UIButton *)p0;
	-(void) ContinueButton_TouchUpInside:(UIButton *)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
@end

@interface UserTypeSelectionController : UIViewController {
}
	@property (nonatomic, assign) UIButton * BackButton;
	@property (nonatomic, assign) UIImageView * BackgroundImage;
	@property (nonatomic, assign) UIButton * NonprofitButton;
	@property (nonatomic, assign) UILabel * QuestionLabel;
	@property (nonatomic, assign) UIButton * VolunteerButton;
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(UIButton *) BackButton;
	-(void) setBackButton:(UIButton *)p0;
	-(UIImageView *) BackgroundImage;
	-(void) setBackgroundImage:(UIImageView *)p0;
	-(UIButton *) NonprofitButton;
	-(void) setNonprofitButton:(UIButton *)p0;
	-(UILabel *) QuestionLabel;
	-(void) setQuestionLabel:(UILabel *)p0;
	-(UIButton *) VolunteerButton;
	-(void) setVolunteerButton:(UIButton *)p0;
	-(void) prepareForSegue:(UIStoryboardSegue *)p0 sender:(NSObject *)p1;
	-(void) BackButton_TouchUpInside:(UIButton *)p0;
	-(void) NonprofitButton_TouchUpInside:(UIButton *)p0;
	-(void) VolunteerButton_TouchUpInside:(UIButton *)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
@end

@interface ViewController : UIViewController {
}
	@property (nonatomic, assign) UIButton * Button;
	@property (nonatomic, assign) UIImageView * BackgroundImageView;
	@property (nonatomic, assign) UIButton * LoginButton;
	@property (nonatomic, assign) UIImageView * LogoImage;
	@property (nonatomic, assign) UIButton * SignupButton;
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(UIButton *) Button;
	-(void) setButton:(UIButton *)p0;
	-(UIImageView *) BackgroundImageView;
	-(void) setBackgroundImageView:(UIImageView *)p0;
	-(UIButton *) LoginButton;
	-(void) setLoginButton:(UIButton *)p0;
	-(UIImageView *) LogoImage;
	-(void) setLogoImage:(UIImageView *)p0;
	-(UIButton *) SignupButton;
	-(void) setSignupButton:(UIButton *)p0;
	-(void) viewDidLoad;
	-(void) didReceiveMemoryWarning;
	-(void) prepareForSegue:(UIStoryboardSegue *)p0 sender:(NSObject *)p1;
	-(void) LoginButton_TouchUpInside:(UIButton *)p0;
	-(void) SignupButton_TouchUpInside:(UIButton *)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
@end

@interface EstablishedNonprofitViewController : UIViewController {
}
	@property (nonatomic, assign) UIButton * BackButton;
	@property (nonatomic, assign) UIImageView * BackgroundImage;
	@property (nonatomic, assign) UIButton * ContinueButton;
	@property (nonatomic, assign) UILabel * EINLabel;
	@property (nonatomic, assign) UITextField * EINTextfield;
	@property (nonatomic, assign) UILabel * InformationStmtLabel;
	@property (nonatomic, assign) UILabel * OrganizationNameLabel;
	@property (nonatomic, assign) UITextField * OrganizationNameTextfield;
	@property (nonatomic, assign) UITextField * State;
	@property (nonatomic, assign) UILabel * ZipCodeLabel;
	@property (nonatomic, assign) UITextField * ZipCodeTextfield;
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(UIButton *) BackButton;
	-(void) setBackButton:(UIButton *)p0;
	-(UIImageView *) BackgroundImage;
	-(void) setBackgroundImage:(UIImageView *)p0;
	-(UIButton *) ContinueButton;
	-(void) setContinueButton:(UIButton *)p0;
	-(UILabel *) EINLabel;
	-(void) setEINLabel:(UILabel *)p0;
	-(UITextField *) EINTextfield;
	-(void) setEINTextfield:(UITextField *)p0;
	-(UILabel *) InformationStmtLabel;
	-(void) setInformationStmtLabel:(UILabel *)p0;
	-(UILabel *) OrganizationNameLabel;
	-(void) setOrganizationNameLabel:(UILabel *)p0;
	-(UITextField *) OrganizationNameTextfield;
	-(void) setOrganizationNameTextfield:(UITextField *)p0;
	-(UITextField *) State;
	-(void) setState:(UITextField *)p0;
	-(UILabel *) ZipCodeLabel;
	-(void) setZipCodeLabel:(UILabel *)p0;
	-(UITextField *) ZipCodeTextfield;
	-(void) setZipCodeTextfield:(UITextField *)p0;
	-(void) prepareForSegue:(UIStoryboardSegue *)p0 sender:(NSObject *)p1;
	-(void) BackButton_TouchUpInside:(UIButton *)p0;
	-(void) ContinueButton_TouchUpInside:(UIButton *)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
@end

@interface FIRActionCodeInfo : NSObject {
}
	-(NSString *) dataForKey:(NSInteger)p0;
	-(NSInteger) operation;
@end

@interface FIRActionCodeSettings : NSObject {
}
	-(void) setAndroidPackageName:(NSString *)p0 installIfNotAvailable:(BOOL)p1 minimumVersion:(NSString *)p2;
	-(BOOL) androidInstallIfNotAvailable;
	-(NSString *) androidMinimumVersion;
	-(NSString *) androidPackageName;
	-(BOOL) handleCodeInApp;
	-(void) setHandleCodeInApp:(BOOL)p0;
	-(NSString *) iOSBundleID;
	-(void) setIOSBundleID:(NSString *)p0;
	-(NSURL *) URL;
	-(void) setURL:(NSURL *)p0;
	-(id) init;
@end

@interface FIRAdditionalUserInfo : NSObject {
}
	-(BOOL) isNewUser;
	-(NSDictionary <NSString *, NSObject *>*) profile;
	-(NSString *) providerID;
	-(NSString *) username;
@end

@interface FIRAuthCredential : NSObject {
}
	-(NSString *) provider;
@end

@interface FIRAuthDataResult : NSObject {
}
	-(id) additionalUserInfo;
	-(id) user;
@end

@interface FIRAuthSettings : NSObject {
}
	-(BOOL) isAppVerificationDisabledForTesting;
	-(void) setAppVerificationDisabledForTesting:(BOOL)p0;
	-(id) init;
@end

@interface FIRAuthTokenResult : NSObject {
}
	-(NSDate *) authDate;
	-(NSDictionary <NSString *, NSObject *>*) claims;
	-(NSDate *) expirationDate;
	-(NSDate *) issuedAtDate;
	-(NSString *) signInProvider;
	-(NSString *) token;
	-(id) init;
@end

@protocol FIRAuthUIDelegate
	@required -(void) presentViewController:(UIViewController *)p0 animated:(BOOL)p1 completion:(id)p2;
	@required -(void) dismissViewControllerAnimated:(BOOL)p0 completion:(id)p1;
@end

@interface ApiDefinition__Firebase_Auth_AuthUIDelegate : NSObject<FIRAuthUIDelegate> {
}
	-(id) init;
@end

@interface FIREmailAuthProvider : NSObject {
}
@end

@interface FIRFacebookAuthProvider : NSObject {
}
@end

@interface FIRGitHubAuthProvider : NSObject {
}
@end

@interface FIRGoogleAuthProvider : NSObject {
}
@end

@interface FIROAuthProvider : NSObject {
}
@end

@interface FIRPhoneAuthCredential : FIRAuthCredential {
}
@end

@interface FIRTwitterAuthProvider : NSObject {
}
@end

@protocol FIRUserInfo
	@required @property (nonatomic, assign, readonly) NSString * providerID;
	@required @property (nonatomic, assign, readonly) NSString * uid;
	@required @property (nonatomic, assign, readonly) NSString * displayName;
	@required @property (nonatomic, copy, readonly) NSURL * photoURL;
	@required @property (nonatomic, assign, readonly) NSString * email;
	@required @property (nonatomic, assign, readonly) NSString * phoneNumber;
@end

@interface FIRUserMetadata : NSObject {
}
	-(NSDate *) creationDate;
	-(NSDate *) lastSignInDate;
@end

@interface FIRAuth : NSObject {
}
	-(NSObject *) addAuthStateDidChangeListener:(id)p0;
	-(NSObject *) addIDTokenDidChangeListener:(id)p0;
	-(void) applyActionCode:(NSString *)p0 completion:(id)p1;
	-(BOOL) canHandleNotification:(NSDictionary *)p0;
	-(BOOL) canHandleURL:(NSURL *)p0;
	-(void) checkActionCode:(NSString *)p0 completion:(id)p1;
	-(void) confirmPasswordResetWithCode:(NSString *)p0 newPassword:(NSString *)p1 completion:(id)p2;
	-(void) createUserWithEmail:(NSString *)p0 password:(NSString *)p1 completion:(id)p2;
	-(void) createUserAndRetrieveDataWithEmail:(NSString *)p0 password:(NSString *)p1 completion:(id)p2;
	-(void) fetchProvidersForEmail:(NSString *)p0 completion:(id)p1;
	-(void) fetchSignInMethodsForEmail:(NSString *)p0 completion:(id)p1;
	-(BOOL) isSignInWithEmailLink:(NSString *)p0;
	-(void) removeAuthStateDidChangeListener:(NSObject *)p0;
	-(void) removeIDTokenDidChangeListener:(NSObject *)p0;
	-(void) sendPasswordResetWithEmail:(NSString *)p0 completion:(id)p1;
	-(void) sendPasswordResetWithEmail:(NSString *)p0 actionCodeSettings:(id)p1 completion:(id)p2;
	-(void) sendSignInLinkToEmail:(NSString *)p0 actionCodeSettings:(id)p1 completion:(id)p2;
	-(void) setAPNSToken:(NSData *)p0 type:(NSInteger)p1;
	-(void) signInAndRetrieveDataWithCredential:(id)p0 completion:(id)p1;
	-(void) signInAndRetrieveDataWithCustomToken:(NSString *)p0 completion:(id)p1;
	-(void) signInAndRetrieveDataWithEmail:(NSString *)p0 password:(NSString *)p1 completion:(id)p2;
	-(void) signInAnonymouslyWithCompletion:(id)p0;
	-(void) signInAnonymouslyAndRetrieveDataWithCompletion:(id)p0;
	-(void) signInWithCredential:(id)p0 completion:(id)p1;
	-(void) signInWithCustomToken:(NSString *)p0 completion:(id)p1;
	-(void) signInWithEmail:(NSString *)p0 link:(NSString *)p1 completion:(id)p2;
	-(void) signInWithEmail:(NSString *)p0 password:(NSString *)p1 completion:(id)p2;
	-(BOOL) signOut:(NSError **)p0;
	-(void) updateCurrentUser:(id)p0 completion:(id)p1;
	-(void) useAppLanguage;
	-(void) verifyPasswordResetCode:(NSString *)p0 completion:(id)p1;
	-(NSData *) APNSToken;
	-(void) setAPNSToken:(NSData *)p0;
	-(id) app;
	-(id) currentUser;
	-(NSString *) languageCode;
	-(void) setLanguageCode:(NSString *)p0;
	-(id) settings;
	-(void) setSettings:(id)p0;
@end

@interface FIRPhoneAuthProvider : NSObject {
}
	-(id) credentialWithVerificationID:(NSString *)p0 verificationCode:(NSString *)p1;
	-(void) verifyPhoneNumber:(NSString *)p0 UIDelegate:(id)p1 completion:(id)p2;
@end

@interface FIRUser : NSObject {
}
	-(void) deleteWithCompletion:(id)p0;
	-(void) getIDTokenWithCompletion:(id)p0;
	-(void) getIDTokenForcingRefresh:(BOOL)p0 completion:(id)p1;
	-(void) getIDTokenResultWithCompletion:(id)p0;
	-(void) getIDTokenResultForcingRefresh:(BOOL)p0 completion:(id)p1;
	-(void) getTokenWithCompletion:(id)p0;
	-(void) getTokenForcingRefresh:(BOOL)p0 completion:(id)p1;
	-(void) linkWithCredential:(id)p0 completion:(id)p1;
	-(void) linkAndRetrieveDataWithCredential:(id)p0 completion:(id)p1;
	-(id) profileChangeRequest;
	-(void) reauthenticateWithCredential:(id)p0 completion:(id)p1;
	-(void) reauthenticateAndRetrieveDataWithCredential:(id)p0 completion:(id)p1;
	-(void) reloadWithCompletion:(id)p0;
	-(void) sendEmailVerificationWithCompletion:(id)p0;
	-(void) sendEmailVerificationWithActionCodeSettings:(id)p0 completion:(id)p1;
	-(void) unlinkFromProvider:(NSString *)p0 completion:(id)p1;
	-(void) updateEmail:(NSString *)p0 completion:(id)p1;
	-(void) updatePassword:(NSString *)p0 completion:(id)p1;
	-(void) updatePhoneNumberCredential:(id)p0 completion:(id)p1;
	-(NSString *) displayName;
	-(NSString *) email;
	-(BOOL) isAnonymous;
	-(BOOL) isEmailVerified;
	-(id) metadata;
	-(NSString *) phoneNumber;
	-(NSURL *) photoURL;
	-(NSArray *) providerData;
	-(NSString *) providerID;
	-(NSString *) refreshToken;
	-(NSString *) uid;
@end

@interface FIRUserProfileChangeRequest : NSObject {
}
	-(void) commitChangesWithCompletion:(id)p0;
	-(NSString *) displayName;
	-(void) setDisplayName:(NSString *)p0;
	-(NSURL *) photoURL;
	-(void) setPhotoURL:(NSURL *)p0;
@end

@interface FIRApp : NSObject {
}
	-(void) deleteApp:(id)p0;
	-(BOOL) isDataCollectionDefaultEnabled;
	-(void) setDataCollectionDefaultEnabled:(BOOL)p0;
	-(NSString *) name;
	-(id) options;
@end

@interface FIRAnalyticsConfiguration : NSObject {
}
	-(void) setAnalyticsCollectionEnabled:(BOOL)p0;
	-(void) setMinimumSessionInterval:(double)p0;
	-(void) setSessionTimeoutInterval:(double)p0;
@end

@interface FIRConfiguration : NSObject {
}
	-(void) setLoggerLevel:(NSInteger)p0;
	-(id) analyticsConfiguration;
	-(void) setAnalyticsConfiguration:(id)p0;
@end

@interface FIROptions : NSObject {
}
	-(NSObject *) copyWithZone:(id)p0;
	-(NSString *) androidClientID;
	-(void) setAndroidClientID:(NSString *)p0;
	-(NSString *) APIKey;
	-(void) setAPIKey:(NSString *)p0;
	-(NSString *) bundleID;
	-(void) setBundleID:(NSString *)p0;
	-(NSString *) clientID;
	-(void) setClientID:(NSString *)p0;
	-(NSString *) databaseURL;
	-(void) setDatabaseURL:(NSString *)p0;
	-(NSString *) deepLinkURLScheme;
	-(void) setDeepLinkURLScheme:(NSString *)p0;
	-(NSString *) GCMSenderID;
	-(void) setGCMSenderID:(NSString *)p0;
	-(NSString *) googleAppID;
	-(void) setGoogleAppID:(NSString *)p0;
	-(NSString *) projectID;
	-(void) setProjectID:(NSString *)p0;
	-(NSString *) storageBucket;
	-(void) setStorageBucket:(NSString *)p0;
	-(NSString *) trackingID;
	-(void) setTrackingID:(NSString *)p0;
	-(id) initWithContentsOfFile:(NSString *)p0;
	-(id) initWithGoogleAppID:(NSString *)p0 GCMSenderID:(NSString *)p1;
@end

@interface OpenTK_Platform_iPhoneOS_iPhoneOSGameView : UIView {
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	+(Class) layerClass;
	-(void) layoutSubviews;
	-(void) willMoveToWindow:(UIWindow *)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) initWithCoder:(NSCoder *)p0;
	-(id) initWithFrame:(CGRect)p0;
@end

@interface FIRDatabaseQuery : NSObject {
}
	-(id) queryEndingAtValue:(NSObject *)p0;
	-(id) queryEndingAtValue:(NSObject *)p0 childKey:(NSString *)p1;
	-(id) queryEqualToValue:(NSObject *)p0;
	-(id) queryEqualToValue:(NSObject *)p0 childKey:(NSString *)p1;
	-(id) queryLimitedToFirst:(NSUInteger)p0;
	-(id) queryLimitedToLast:(NSUInteger)p0;
	-(id) queryOrderedByChild:(NSString *)p0;
	-(id) queryOrderedByKey;
	-(id) queryOrderedByPriority;
	-(id) queryOrderedByValue;
	-(id) queryStartingAtValue:(NSObject *)p0;
	-(id) queryStartingAtValue:(NSObject *)p0 childKey:(NSString *)p1;
	-(void) keepSynced:(BOOL)p0;
	-(NSUInteger) observeEventType:(NSInteger)p0 withBlock:(id)p1;
	-(NSUInteger) observeEventType:(NSInteger)p0 andPreviousSiblingKeyWithBlock:(id)p1;
	-(NSUInteger) observeEventType:(NSInteger)p0 withBlock:(id)p1 withCancelBlock:(id)p2;
	-(NSUInteger) observeEventType:(NSInteger)p0 andPreviousSiblingKeyWithBlock:(id)p1 withCancelBlock:(id)p2;
	-(void) observeSingleEventOfType:(NSInteger)p0 withBlock:(id)p1;
	-(void) observeSingleEventOfType:(NSInteger)p0 andPreviousSiblingKeyWithBlock:(id)p1;
	-(void) observeSingleEventOfType:(NSInteger)p0 withBlock:(id)p1 withCancelBlock:(id)p2;
	-(void) observeSingleEventOfType:(NSInteger)p0 andPreviousSiblingKeyWithBlock:(id)p1 withCancelBlock:(id)p2;
	-(void) removeAllObservers;
	-(void) removeObserverWithHandle:(NSUInteger)p0;
	-(id) ref;
	-(id) init;
@end

@interface FIRDatabaseReference : FIRDatabaseQuery {
}
	-(void) cancelDisconnectOperations;
	-(void) cancelDisconnectOperationsWithCompletionBlock:(id)p0;
	-(id) child:(NSString *)p0;
	-(id) childByAppendingPath:(NSString *)p0;
	-(id) childByAutoId;
	-(id) queryEndingAtValue:(NSObject *)p0;
	-(id) queryEndingAtValue:(NSObject *)p0 childKey:(NSString *)p1;
	-(id) queryEqualToValue:(NSObject *)p0;
	-(id) queryEqualToValue:(NSObject *)p0 childKey:(NSString *)p1;
	-(id) queryLimitedToFirst:(NSUInteger)p0;
	-(id) queryLimitedToLast:(NSUInteger)p0;
	-(id) queryOrderedByChild:(NSString *)p0;
	-(id) queryOrderedByKey;
	-(id) queryOrderedByPriority;
	-(id) queryStartingAtValue:(NSObject *)p0;
	-(id) queryStartingAtValue:(NSObject *)p0 childKey:(NSString *)p1;
	-(void) keepSynced:(BOOL)p0;
	-(NSUInteger) observeEventType:(NSInteger)p0 withBlock:(id)p1;
	-(NSUInteger) observeEventType:(NSInteger)p0 andPreviousSiblingKeyWithBlock:(id)p1;
	-(NSUInteger) observeEventType:(NSInteger)p0 withBlock:(id)p1 withCancelBlock:(id)p2;
	-(NSUInteger) observeEventType:(NSInteger)p0 andPreviousSiblingKeyWithBlock:(id)p1 withCancelBlock:(id)p2;
	-(void) observeSingleEventOfType:(NSInteger)p0 withBlock:(id)p1;
	-(void) observeSingleEventOfType:(NSInteger)p0 andPreviousSiblingKeyWithBlock:(id)p1;
	-(void) observeSingleEventOfType:(NSInteger)p0 withBlock:(id)p1 withCancelBlock:(id)p2;
	-(void) observeSingleEventOfType:(NSInteger)p0 andPreviousSiblingKeyWithBlock:(id)p1 withCancelBlock:(id)p2;
	-(void) removeAllObservers;
	-(void) removeObserverWithHandle:(NSUInteger)p0;
	-(void) removeValue;
	-(void) removeValueWithCompletionBlock:(id)p0;
	-(void) onDisconnectRemoveValue;
	-(void) onDisconnectRemoveValueWithCompletionBlock:(id)p0;
	-(void) runTransactionBlock:(id)p0;
	-(void) runTransactionBlock:(id)p0 andCompletionBlock:(id)p1;
	-(void) runTransactionBlock:(id)p0 andCompletionBlock:(id)p1 withLocalEvents:(BOOL)p2;
	-(void) setPriority:(NSObject *)p0;
	-(void) setPriority:(NSObject *)p0 withCompletionBlock:(id)p1;
	-(void) updateChildValues:(NSDictionary *)p0;
	-(void) updateChildValues:(NSDictionary *)p0 withCompletionBlock:(id)p1;
	-(void) onDisconnectUpdateChildValues:(NSDictionary *)p0;
	-(void) onDisconnectUpdateChildValues:(NSDictionary *)p0 withCompletionBlock:(id)p1;
	-(void) setValue:(NSObject *)p0;
	-(void) setValue:(NSObject *)p0 withCompletionBlock:(id)p1;
	-(void) setValue:(NSObject *)p0 andPriority:(NSObject *)p1;
	-(void) setValue:(NSObject *)p0 andPriority:(NSObject *)p1 withCompletionBlock:(id)p2;
	-(void) onDisconnectSetValue:(NSObject *)p0;
	-(void) onDisconnectSetValue:(NSObject *)p0 withCompletionBlock:(id)p1;
	-(void) onDisconnectSetValue:(NSObject *)p0 andPriority:(NSObject *)p1;
	-(void) onDisconnectSetValue:(NSObject *)p0 andPriority:(NSObject *)p1 withCompletionBlock:(id)p2;
	-(id) database;
	-(NSString *) description;
	-(NSString *) key;
	-(id) parent;
	-(id) root;
	-(NSString *) URL;
	-(id) init;
@end

@interface FIRDataSnapshot : NSObject {
}
	-(id) childSnapshotForPath:(NSString *)p0;
	-(BOOL) hasChild:(NSString *)p0;
	-(NSEnumerator *) children;
	-(NSUInteger) childrenCount;
	-(BOOL) exists;
	-(BOOL) hasChildren;
	-(NSString *) key;
	-(NSObject *) priority;
	-(id) ref;
	-(NSObject *) valueInExportFormat;
	-(void *) value;
	-(id) init;
@end

@interface FIRMutableData : NSObject {
}
	-(id) childDataByAppendingPath:(NSString *)p0;
	-(BOOL) hasChildAtPath:(NSString *)p0;
	-(NSEnumerator *) children;
	-(NSUInteger) childrenCount;
	-(BOOL) hasChildren;
	-(NSString *) key;
	-(NSObject *) priority;
	-(void) setPriority:(NSObject *)p0;
	-(void *) value;
	-(void) setValue:(void *)p0;
	-(id) init;
@end

@interface FIRDatabase : NSObject {
}
	-(id) referenceWithPath:(NSString *)p0;
	-(id) referenceFromURL:(NSString *)p0;
	-(id) reference;
	-(void) goOffline;
	-(void) goOnline;
	-(void) purgeOutstandingWrites;
	-(id) app;
	-(id) callbackQueue;
	-(void) setCallbackQueue:(id)p0;
	-(NSUInteger) persistenceCacheSizeBytes;
	-(void) setPersistenceCacheSizeBytes:(NSUInteger)p0;
	-(BOOL) persistenceEnabled;
	-(void) setPersistenceEnabled:(BOOL)p0;
@end

@interface FIRServerValue : NSObject {
}
@end

@interface FIRTransactionResult : NSObject {
}
@end


