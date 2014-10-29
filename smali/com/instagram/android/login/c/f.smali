.class public final Lcom/instagram/android/login/c/f;
.super Ljava/lang/Object;
.source "FacebookVerifyAccessTokenRequest.java"


# instance fields
.field private a:Lcom/instagram/user/c/a;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/instagram/user/c/a;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/instagram/android/login/c/f;->a:Lcom/instagram/user/c/a;

    .line 101
    iput-object p2, p0, Lcom/instagram/android/login/c/f;->b:Ljava/lang/String;

    .line 102
    return-void
.end method


# virtual methods
.method public final a()Lcom/instagram/user/c/a;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/instagram/android/login/c/f;->a:Lcom/instagram/user/c/a;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/instagram/android/login/c/f;->b:Ljava/lang/String;

    return-object v0
.end method
