// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.p;

import com.instagram.common.aa.a;

public final class b extends Enum
{

    public static final b A;
    public static final b B;
    public static final b C;
    public static final b D;
    public static final b E;
    public static final b F;
    public static final b G;
    public static final b H;
    public static final b I;
    public static final b J;
    public static final b K;
    public static final b L;
    public static final b M;
    public static final b N;
    public static final b O;
    public static final b P;
    public static final b Q;
    public static final b R;
    public static final b S;
    public static final b T;
    public static final b U;
    public static final b V;
    public static final b W;
    public static final b X;
    public static final b Y;
    public static final b Z;
    public static final b a;
    public static final b aA;
    public static final b aB;
    public static final b aC;
    public static final b aD;
    public static final b aE;
    private static final b aG[];
    public static final b aa;
    public static final b ab;
    public static final b ac;
    public static final b ad;
    public static final b ae;
    public static final b af;
    public static final b ag;
    public static final b ah;
    public static final b ai;
    public static final b aj;
    public static final b ak;
    public static final b al;
    public static final b am;
    public static final b an;
    public static final b ao;
    public static final b ap;
    public static final b aq;
    public static final b ar;
    public static final b as;
    public static final b at;
    public static final b au;
    public static final b av;
    public static final b aw;
    public static final b ax;
    public static final b ay;
    public static final b az;
    public static final b b;
    public static final b c;
    public static final b d;
    public static final b e;
    public static final b f;
    public static final b g;
    public static final b h;
    public static final b i;
    public static final b j;
    public static final b k;
    public static final b l;
    public static final b m;
    public static final b n;
    public static final b o;
    public static final b p;
    public static final b q;
    public static final b r;
    public static final b s;
    public static final b t;
    public static final b u;
    public static final b v;
    public static final b w;
    public static final b x;
    public static final b y;
    public static final b z;
    private final String aF;

    private b(String s1, int i1, String s2)
    {
        super(s1, i1);
        aF = s2;
    }

    public static void a()
    {
        d().a();
    }

    private static a d()
    {
        return com.instagram.common.aa.a.a("log_in");
    }

    public static b valueOf(String s1)
    {
        return (b)Enum.valueOf(com/instagram/p/b, s1);
    }

    public static b[] values()
    {
        return (b[])aG.clone();
    }

    public final com.instagram.common.analytics.b b()
    {
        return d().b(aF);
    }

    public final void c()
    {
        b().a();
    }

    static 
    {
        a = new b("LandingCreated", 0, "landing_created");
        b = new b("LandingViewed", 1, "landing_viewed");
        c = new b("ChooseFacebook", 2, "choose_facebook");
        d = new b("TryFacebookAuth", 3, "try_facebook_auth");
        e = new b("FacebookAuthSucceeded", 4, "facebook_auth_succeeded");
        f = new b("CancelFacebookAuth", 5, "cancel_facebook_auth");
        g = new b("FacebookAuthError", 6, "facebook_auth_error");
        h = new b("TryFacebookSso", 7, "try_facebook_sso");
        i = new b("FacebookEmailNotUnique", 8, "facebook_email_not_unique");
        j = new b("FacebookEmailNotUniqueRegister", 9, "facebook_email_not_unique_register");
        k = new b("FacebookEmailNotUniqueLogIn", 10, "facebook_email_not_unique_log_in");
        l = new b("CanRecoverPassword", 11, "can_recover_password");
        m = new b("RecoverPassword", 12, "recover_password");
        n = new b("FacebookSsoError", 13, "facebook_sso_error");
        o = new b("CheckFacebookUsername", 14, "check_facebook_username");
        p = new b("CheckFacebookUsernameError", 15, "check_facebook_username_error");
        q = new b("FacebookUsernameAvailable", 16, "facebook_username_available");
        r = new b("FacebookUsernameUnavailable", 17, "facebook_username_unavailable");
        s = new b("RegisterWithFacebook", 18, "register_with_facebook");
        t = new b("ChooseEmail", 19, "choose_email");
        u = new b("RegisterWithEmail", 20, "register_with_email");
        v = new b("ChooseLogIn", 21, "choose_log_in");
        w = new b("RegisterCreated", 22, "register_created");
        x = new b("RegisterUsernameFocused", 23, "register_username_focused");
        y = new b("RegisterUsernameCheck", 24, "register_username_check");
        z = new b("RegisterUsernameFound", 25, "register_username_found");
        A = new b("RegisterUsernameUnfocused", 26, "register_username_unfocused");
        B = new b("RegisterPasswordFocused", 27, "register_password_focused");
        C = new b("RegisterPasswordFound", 28, "register_password_found");
        D = new b("RegisterUseMyFacebookInfo", 29, "register_use_my_facebook_info");
        E = new b("RegisterAvatarClicked", 30, "register_avatar_clicked");
        F = new b("RegisterNameFocused", 31, "register_name_focused");
        G = new b("RegisterEmailCredentialFocused", 32, "register_email_credential_focused");
        H = new b("RegisterPhoneCredentialFocused", 33, "register_phone_credential_focused");
        I = new b("RegisterOptionalPhoneFocused", 34, "register_optional_phone_focused");
        J = new b("RegisterOptionalEmailFocused", 35, "register_optional_email_focused");
        K = new b("RegisterPopulateFacebookUsername", 36, "register_populate_facebook_username");
        L = new b("RegisterPopulateFacebookEmail", 37, "register_populate_facebook_email");
        M = new b("RegisterPopulateFacebookName", 38, "register_populate_facebook_name");
        N = new b("RegisterTryFacebookAuth", 39, "register_try_facebook_auth");
        O = new b("RegisterFacebookAuthSucceeded", 40, "register_facebook_auth_succeeded");
        P = new b("RegisterCancelFacebookAuth", 41, "register_cancel_facebook_auth");
        Q = new b("RegisterFacebookAuthError", 42, "register_facebook_auth_error");
        R = new b("RegisterSignUpEnabled", 43, "register_sign_up_enabled");
        S = new b("RegisterSignUpClicked", 44, "register_sign_up_clicked");
        T = new b("RegisterChoseUsernameSuggestion", 45, "register_chose_username_suggestion");
        U = new b("RegisterConfirmEmail", 46, "register_confirm_email");
        V = new b("RegisterRejectEmail", 47, "register_reject_email");
        W = new b("RegisterConfirmPhone", 48, "register_confirm_phone");
        X = new b("RegisterRejectPhone", 49, "register_reject_phone");
        Y = new b("RegisterAccountRequestSubmitted", 50, "register_account_request_submitted");
        Z = new b("RegisterAccountFailed", 51, "register_account_failed");
        aa = new b("RegisterCountryCodeSelected", 52, "register_country_code_selected");
        ab = new b("RegisterCountryCodeDialogOpened", 53, "register_country_code_dialog_opened");
        ac = new b("RegisterToggleRegMethod", 54, "register_toggle_registration_method");
        ad = new b("LogInCreated", 55, "log_in_created");
        ae = new b("LogInUsernameFocus", 56, "log_in_username_focus");
        af = new b("LogInPasswordFocus", 57, "log_in_password_focus");
        ag = new b("LogInAttempt", 58, "log_in_attempt");
        ah = new b("ForgotCreated", 59, "forgot_created");
        ai = new b("ForgotFacebook", 60, "forgot_facebook");
        aj = new b("ForgotEmailUsername", 61, "forgot_email_username");
        ak = new b("ForgotSMS", 62, "forgot_sms");
        al = new b("ForgotHelpCenter", 63, "forgot_help_center");
        am = new b("LookupCreated", 64, "lookup_created");
        an = new b("LookupSearch", 65, "lookup_search");
        ao = new b("PhoneRecoveryCreated", 66, "phone_recovery_created");
        ap = new b("RecoveryCreated", 67, "recovery_created");
        aq = new b("RecoveryEmail", 68, "recovery_email");
        ar = new b("RecoverySms", 69, "recovery_sms");
        as = new b("RecoveryFacebook", 70, "recovery_facebook");
        at = new b("PasswordResetCreated", 71, "password_reset_created");
        au = new b("PasswordResetAttempt", 72, "password_reset_attempt");
        av = new b("PushAlarmScheduled", 73, "push_alarm_scheduled");
        aw = new b("PushAlarmCancelled", 74, "push_alarm_cancelled");
        ax = new b("Pushable", 75, "pushable");
        ay = new b("Pushed", 76, "pushed");
        az = new b("PushDismissed", 77, "push_dismissed");
        aA = new b("PushTapped", 78, "push_tapped");
        aB = new b("AttributionFetched", 79, "attribution_fetched");
        aC = new b("FacebookSsoSuccess", 80, "facebook_sso_success");
        aD = new b("RegisterAccountCreated", 81, "register_account_created");
        aE = new b("LogIn", 82, "log_in");
        b ab1[] = new b[83];
        ab1[0] = a;
        ab1[1] = b;
        ab1[2] = c;
        ab1[3] = d;
        ab1[4] = e;
        ab1[5] = f;
        ab1[6] = g;
        ab1[7] = h;
        ab1[8] = i;
        ab1[9] = j;
        ab1[10] = k;
        ab1[11] = l;
        ab1[12] = m;
        ab1[13] = n;
        ab1[14] = o;
        ab1[15] = p;
        ab1[16] = q;
        ab1[17] = r;
        ab1[18] = s;
        ab1[19] = t;
        ab1[20] = u;
        ab1[21] = v;
        ab1[22] = w;
        ab1[23] = x;
        ab1[24] = y;
        ab1[25] = z;
        ab1[26] = A;
        ab1[27] = B;
        ab1[28] = C;
        ab1[29] = D;
        ab1[30] = E;
        ab1[31] = F;
        ab1[32] = G;
        ab1[33] = H;
        ab1[34] = I;
        ab1[35] = J;
        ab1[36] = K;
        ab1[37] = L;
        ab1[38] = M;
        ab1[39] = N;
        ab1[40] = O;
        ab1[41] = P;
        ab1[42] = Q;
        ab1[43] = R;
        ab1[44] = S;
        ab1[45] = T;
        ab1[46] = U;
        ab1[47] = V;
        ab1[48] = W;
        ab1[49] = X;
        ab1[50] = Y;
        ab1[51] = Z;
        ab1[52] = aa;
        ab1[53] = ab;
        ab1[54] = ac;
        ab1[55] = ad;
        ab1[56] = ae;
        ab1[57] = af;
        ab1[58] = ag;
        ab1[59] = ah;
        ab1[60] = ai;
        ab1[61] = aj;
        ab1[62] = ak;
        ab1[63] = al;
        ab1[64] = am;
        ab1[65] = an;
        ab1[66] = ao;
        ab1[67] = ap;
        ab1[68] = aq;
        ab1[69] = ar;
        ab1[70] = as;
        ab1[71] = at;
        ab1[72] = au;
        ab1[73] = av;
        ab1[74] = aw;
        ab1[75] = ax;
        ab1[76] = ay;
        ab1[77] = az;
        ab1[78] = aA;
        ab1[79] = aB;
        ab1[80] = aC;
        ab1[81] = aD;
        ab1[82] = aE;
        aG = ab1;
    }
}
