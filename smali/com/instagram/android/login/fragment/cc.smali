.class final Lcom/instagram/android/login/fragment/cc;
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
    .line 129
    iput-object p1, p0, Lcom/instagram/android/login/fragment/cc;->a:Lcom/instagram/android/login/fragment/bz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 132
    sget-object v0, Lcom/instagram/p/b;->aq:Lcom/instagram/p/b;

    invoke-virtual {v0}, Lcom/instagram/p/b;->c()V

    .line 133
    iget-object v0, p0, Lcom/instagram/android/login/fragment/cc;->a:Lcom/instagram/android/login/fragment/bz;

    invoke-virtual {v0}, Lcom/instagram/android/login/fragment/bz;->b()Lcom/instagram/android/login/c/o;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/login/fragment/cc;->a:Lcom/instagram/android/login/fragment/bz;

    invoke-static {v1}, Lcom/instagram/android/login/fragment/bz;->b(Lcom/instagram/android/login/fragment/bz;)Lcom/instagram/user/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/login/c/o;->a(Ljava/lang/String;)V

    .line 134
    return-void
.end method
