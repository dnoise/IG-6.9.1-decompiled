.class public final Lcom/instagram/android/login/c/g;
.super Lcom/instagram/api/k/a/b;
.source "LoginRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/k/a/b",
        "<",
        "Lcom/instagram/android/login/c/h;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/instagram/api/k/a/b;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/instagram/android/login/c/g;->a:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/instagram/android/login/c/g;->b:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcom/instagram/android/login/c/g;->d:Ljava/lang/String;

    .line 24
    iput-object p4, p0, Lcom/instagram/android/login/c/g;->e:Ljava/lang/String;

    .line 25
    return-void
.end method

.method private static b(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/android/login/c/h;
    .locals 1
    .parameter

    .prologue
    .line 34
    invoke-static {p0}, Lcom/instagram/android/login/c/i;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/android/login/c/h;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final synthetic a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/api/k/a/d;
    .locals 1
    .parameter

    .prologue
    .line 13
    invoke-static {p1}, Lcom/instagram/android/login/c/g;->b(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/android/login/c/h;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Lcom/instagram/api/b/a;)V
    .locals 2
    .parameter

    .prologue
    .line 39
    const-string v0, "username"

    iget-object v1, p0, Lcom/instagram/android/login/c/g;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string v0, "password"

    iget-object v1, p0, Lcom/instagram/android/login/c/g;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v0, "device_id"

    iget-object v1, p0, Lcom/instagram/android/login/c/g;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string v0, "guid"

    iget-object v1, p0, Lcom/instagram/android/login/c/g;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 52
    sget v0, Lcom/instagram/common/a/c/a;->a:I

    return v0
.end method

.method protected final d_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    const-string v0, "accounts/login/"

    return-object v0
.end method

.method public final e_()Z
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x1

    return v0
.end method
