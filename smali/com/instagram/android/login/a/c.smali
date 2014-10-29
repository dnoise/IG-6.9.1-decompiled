.class public final Lcom/instagram/android/login/a/c;
.super Lcom/instagram/ui/dialog/g;
.source "CreateAccountCallbacks.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/instagram/ui/dialog/g;-><init>()V

    return-void
.end method


# virtual methods
.method protected final V()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    sget v0, Lcom/facebook/az;->registering:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/login/a/c;->c(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
