.class final Lcom/instagram/android/login/fragment/ce;
.super Ljava/lang/Object;
.source "UserPasswordRecoveryFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/login/fragment/bz;


# direct methods
.method constructor <init>(Lcom/instagram/android/login/fragment/bz;)V
    .locals 0
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lcom/instagram/android/login/fragment/ce;->a:Lcom/instagram/android/login/fragment/bz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 152
    sget-object v0, Lcom/instagram/p/b;->as:Lcom/instagram/p/b;

    invoke-virtual {v0}, Lcom/instagram/p/b;->c()V

    .line 154
    invoke-static {}, Lcom/instagram/share/b/a;->a()Lcom/facebook/b/b;

    move-result-object v0

    .line 155
    iget-object v1, p0, Lcom/instagram/android/login/fragment/ce;->a:Lcom/instagram/android/login/fragment/bz;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Lcom/instagram/android/login/fragment/ce;->a:Lcom/instagram/android/login/fragment/bz;

    invoke-static {v3}, Lcom/instagram/android/login/fragment/bz;->c(Lcom/instagram/android/login/fragment/bz;)Lcom/instagram/android/login/fragment/cf;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/b/b;->a(Landroid/support/v4/app/Fragment;[Ljava/lang/String;Lcom/facebook/b/e;)V

    .line 159
    return-void
.end method
