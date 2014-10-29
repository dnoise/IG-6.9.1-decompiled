.class final Lcom/instagram/android/login/fragment/ax;
.super Ljava/lang/Object;
.source "RegisterFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/android/login/fragment/aw;


# direct methods
.method constructor <init>(Lcom/instagram/android/login/fragment/aw;)V
    .locals 0
    .parameter

    .prologue
    .line 889
    iput-object p1, p0, Lcom/instagram/android/login/fragment/ax;->a:Lcom/instagram/android/login/fragment/aw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 892
    iget-object v0, p0, Lcom/instagram/android/login/fragment/ax;->a:Lcom/instagram/android/login/fragment/aw;

    iget-object v0, v0, Lcom/instagram/android/login/fragment/aw;->a:Lcom/instagram/android/login/fragment/an;

    iget-object v1, p0, Lcom/instagram/android/login/fragment/ax;->a:Lcom/instagram/android/login/fragment/aw;

    iget-object v1, v1, Lcom/instagram/android/login/fragment/aw;->a:Lcom/instagram/android/login/fragment/an;

    invoke-static {v1}, Lcom/instagram/android/login/fragment/an;->j(Lcom/instagram/android/login/fragment/an;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/android/login/fragment/an;->d(Lcom/instagram/android/login/fragment/an;Ljava/lang/String;)V

    .line 893
    iget-object v0, p0, Lcom/instagram/android/login/fragment/ax;->a:Lcom/instagram/android/login/fragment/aw;

    iget-object v0, v0, Lcom/instagram/android/login/fragment/aw;->a:Lcom/instagram/android/login/fragment/an;

    sget-object v1, Lcom/instagram/android/login/fragment/bx;->c:Lcom/instagram/android/login/fragment/bx;

    invoke-static {v0, v1}, Lcom/instagram/android/login/fragment/an;->a(Lcom/instagram/android/login/fragment/an;Lcom/instagram/android/login/fragment/bx;)V

    .line 894
    iget-object v0, p0, Lcom/instagram/android/login/fragment/ax;->a:Lcom/instagram/android/login/fragment/aw;

    iget-object v0, v0, Lcom/instagram/android/login/fragment/aw;->a:Lcom/instagram/android/login/fragment/an;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/instagram/android/login/fragment/an;->c(Lcom/instagram/android/login/fragment/an;Ljava/lang/String;)Ljava/lang/String;

    .line 895
    iget-object v0, p0, Lcom/instagram/android/login/fragment/ax;->a:Lcom/instagram/android/login/fragment/aw;

    iget-object v0, v0, Lcom/instagram/android/login/fragment/aw;->a:Lcom/instagram/android/login/fragment/an;

    invoke-static {v0}, Lcom/instagram/android/login/fragment/an;->n(Lcom/instagram/android/login/fragment/an;)V

    .line 896
    return-void
.end method
