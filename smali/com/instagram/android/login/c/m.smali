.class public final Lcom/instagram/android/login/c/m;
.super Lcom/instagram/api/k/a/b;
.source "ResetRequest.java"


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

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/instagram/api/k/a/b;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/instagram/android/login/c/m;->a:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/instagram/android/login/c/m;->b:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lcom/instagram/android/login/c/m;->d:Ljava/lang/String;

    .line 44
    iput-object p4, p0, Lcom/instagram/android/login/c/m;->e:Ljava/lang/String;

    .line 45
    iput-object p5, p0, Lcom/instagram/android/login/c/m;->f:Ljava/lang/String;

    .line 46
    iput-object p6, p0, Lcom/instagram/android/login/c/m;->g:Ljava/lang/String;

    .line 47
    return-void
.end method

.method private static b(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/android/login/c/h;
    .locals 1
    .parameter

    .prologue
    .line 56
    invoke-static {p0}, Lcom/instagram/android/login/c/i;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/android/login/c/h;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final synthetic a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/api/k/a/d;
    .locals 1
    .parameter

    .prologue
    .line 24
    invoke-static {p1}, Lcom/instagram/android/login/c/m;->b(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/android/login/c/h;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Lcom/instagram/api/b/a;)V
    .locals 2
    .parameter

    .prologue
    .line 61
    const-string v0, "user_id"

    iget-object v1, p0, Lcom/instagram/android/login/c/m;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v0, "new_password1"

    iget-object v1, p0, Lcom/instagram/android/login/c/m;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v0, "new_password2"

    iget-object v1, p0, Lcom/instagram/android/login/c/m;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v0, "token"

    iget-object v1, p0, Lcom/instagram/android/login/c/m;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v0, "device_id"

    iget-object v1, p0, Lcom/instagram/android/login/c/m;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v0, "guid"

    iget-object v1, p0, Lcom/instagram/android/login/c/m;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 76
    sget v0, Lcom/instagram/common/a/c/a;->a:I

    return v0
.end method

.method protected final d_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    const-string v0, "accounts/change_password/"

    return-object v0
.end method

.method public final e_()Z
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x1

    return v0
.end method
