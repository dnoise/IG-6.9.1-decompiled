.class final Lcom/instagram/android/fragment/ag;
.super Ljava/lang/Object;
.source "EditProfileFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/ac;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/ac;)V
    .locals 0
    .parameter

    .prologue
    .line 197
    iput-object p1, p0, Lcom/instagram/android/fragment/ag;->a:Lcom/instagram/android/fragment/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 200
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 201
    const-string v1, "com.instagram.android.login.fragment.PhoneNumberEntryFragment.ARGUMENT_IS_EDIT_PROFILE_FLOW"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 202
    iget-object v1, p0, Lcom/instagram/android/fragment/ag;->a:Lcom/instagram/android/fragment/ac;

    invoke-static {v1}, Lcom/instagram/android/fragment/ac;->e(Lcom/instagram/android/fragment/ac;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 203
    const-string v1, "com.instagram.android.login.fragment.PhoneNumberEntryFragment.ARGUMENT_COUNTRY_CODE"

    iget-object v2, p0, Lcom/instagram/android/fragment/ag;->a:Lcom/instagram/android/fragment/ac;

    invoke-static {v2}, Lcom/instagram/android/fragment/ac;->f(Lcom/instagram/android/fragment/ac;)Lcom/instagram/android/g/b/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/android/g/b/c;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const-string v1, "com.instagram.android.login.fragment.PhoneNumberEntryFragment.ARGUMENT_NATIONAL_NUMBER"

    iget-object v2, p0, Lcom/instagram/android/fragment/ag;->a:Lcom/instagram/android/fragment/ac;

    invoke-static {v2}, Lcom/instagram/android/fragment/ac;->f(Lcom/instagram/android/fragment/ac;)Lcom/instagram/android/g/b/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/android/g/b/c;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    :cond_0
    new-instance v1, Lcom/instagram/base/a/a/a;

    iget-object v2, p0, Lcom/instagram/android/fragment/ag;->a:Lcom/instagram/android/fragment/ac;

    invoke-virtual {v2}, Lcom/instagram/android/fragment/ac;->p()Landroid/support/v4/app/s;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/instagram/base/a/a/a;-><init>(Landroid/support/v4/app/s;)V

    new-instance v2, Lcom/instagram/android/login/fragment/ad;

    invoke-direct {v2}, Lcom/instagram/android/login/fragment/ad;-><init>()V

    invoke-virtual {v1, v2, v0}, Lcom/instagram/base/a/a/a;->a(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V

    .line 211
    return-void
.end method
