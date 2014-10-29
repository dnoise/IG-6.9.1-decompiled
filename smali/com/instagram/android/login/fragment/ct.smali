.class final Lcom/instagram/android/login/fragment/ct;
.super Ljava/lang/Object;
.source "VerifyFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/android/g/h;

.field final synthetic b:Lcom/instagram/android/login/fragment/cs;


# direct methods
.method constructor <init>(Lcom/instagram/android/login/fragment/cs;Lcom/instagram/android/g/h;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 233
    iput-object p1, p0, Lcom/instagram/android/login/fragment/ct;->b:Lcom/instagram/android/login/fragment/cs;

    iput-object p2, p0, Lcom/instagram/android/login/fragment/ct;->a:Lcom/instagram/android/g/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/instagram/android/login/fragment/ct;->a:Lcom/instagram/android/g/h;

    invoke-virtual {v0}, Lcom/instagram/android/g/h;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/instagram/android/login/fragment/ct;->b:Lcom/instagram/android/login/fragment/cs;

    iget-object v0, v0, Lcom/instagram/android/login/fragment/cs;->a:Lcom/instagram/android/login/fragment/ci;

    invoke-static {v0}, Lcom/instagram/android/login/fragment/ci;->c(Lcom/instagram/android/login/fragment/ci;)V

    .line 239
    :cond_0
    return-void
.end method
