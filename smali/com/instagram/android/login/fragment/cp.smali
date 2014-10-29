.class final Lcom/instagram/android/login/fragment/cp;
.super Ljava/lang/Object;
.source "VerifyFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/base/a/a;

.field final synthetic b:Lcom/instagram/android/login/fragment/co;


# direct methods
.method constructor <init>(Lcom/instagram/android/login/fragment/co;Lcom/instagram/base/a/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 308
    iput-object p1, p0, Lcom/instagram/android/login/fragment/cp;->b:Lcom/instagram/android/login/fragment/co;

    iput-object p2, p0, Lcom/instagram/android/login/fragment/cp;->a:Lcom/instagram/base/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/instagram/android/login/fragment/cp;->a:Lcom/instagram/base/a/a;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/instagram/android/login/fragment/cp;->a:Lcom/instagram/base/a/a;

    invoke-virtual {v0}, Lcom/instagram/base/a/a;->b()V

    .line 314
    :cond_0
    return-void
.end method
