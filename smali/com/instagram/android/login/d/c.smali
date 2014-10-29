.class final Lcom/instagram/android/login/d/c;
.super Lcom/instagram/api/k/a/c;
.source "LogoutTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/k/a/c",
        "<",
        "Lcom/instagram/api/k/a/d;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/instagram/api/k/a/c;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0
    .parameter

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/instagram/android/login/d/c;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/api/k/a/d;
    .locals 1
    .parameter

    .prologue
    .line 90
    invoke-static {p1}, Lcom/instagram/api/k/a/f;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/api/k/a/d;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Lcom/instagram/common/a/c/b;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    return-void
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 85
    sget v0, Lcom/instagram/common/a/c/a;->a:I

    return v0
.end method

.method protected final d_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    const-string v0, "accounts/logout/"

    return-object v0
.end method
