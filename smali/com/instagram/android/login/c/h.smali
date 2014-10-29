.class public final Lcom/instagram/android/login/c/h;
.super Lcom/instagram/api/k/a/d;
.source "LoginResponse.java"


# instance fields
.field a:Lcom/instagram/user/c/a;

.field b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/instagram/api/k/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()Lcom/instagram/user/c/a;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/instagram/android/login/c/h;->a:Lcom/instagram/user/c/a;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/instagram/android/login/c/h;->b:Ljava/lang/String;

    return-object v0
.end method
