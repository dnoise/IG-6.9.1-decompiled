.class final Lcom/instagram/android/login/a/k;
.super Lcom/instagram/ui/dialog/g;
.source "ValidateAccountCallbacks.java"


# instance fields
.field final synthetic aa:Lcom/instagram/android/login/a/i;


# direct methods
.method public constructor <init>(Lcom/instagram/android/login/a/i;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/instagram/android/login/a/k;->aa:Lcom/instagram/android/login/a/i;

    invoke-direct {p0}, Lcom/instagram/ui/dialog/g;-><init>()V

    return-void
.end method


# virtual methods
.method protected final V()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    sget v0, Lcom/facebook/az;->validating:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/login/a/k;->c(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
