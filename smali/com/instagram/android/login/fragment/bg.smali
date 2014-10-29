.class final Lcom/instagram/android/login/fragment/bg;
.super Lcom/instagram/android/login/fragment/bt;
.source "RegisterFragment.java"


# instance fields
.field final synthetic a:Lcom/instagram/android/login/fragment/an;


# direct methods
.method constructor <init>(Lcom/instagram/android/login/fragment/an;)V
    .locals 1
    .parameter

    .prologue
    .line 983
    iput-object p1, p0, Lcom/instagram/android/login/fragment/bg;->a:Lcom/instagram/android/login/fragment/an;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/instagram/android/login/fragment/bt;-><init>(Lcom/instagram/android/login/fragment/an;B)V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 986
    if-eqz p1, :cond_0

    .line 987
    iget-object v0, p0, Lcom/instagram/android/login/fragment/bg;->a:Lcom/instagram/android/login/fragment/an;

    invoke-static {v0}, Lcom/instagram/android/login/fragment/an;->v(Lcom/instagram/android/login/fragment/an;)Lcom/instagram/android/login/k;

    move-result-object v0

    sget-object v1, Lcom/instagram/android/login/k;->c:Lcom/instagram/android/login/k;

    if-ne v0, v1, :cond_1

    .line 988
    sget-object v0, Lcom/instagram/p/b;->J:Lcom/instagram/p/b;

    invoke-virtual {v0}, Lcom/instagram/p/b;->c()V

    .line 993
    :cond_0
    :goto_0
    return-void

    .line 990
    :cond_1
    sget-object v0, Lcom/instagram/p/b;->I:Lcom/instagram/p/b;

    invoke-virtual {v0}, Lcom/instagram/p/b;->c()V

    goto :goto_0
.end method
