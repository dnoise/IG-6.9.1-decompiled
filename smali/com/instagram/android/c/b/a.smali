.class public final Lcom/instagram/android/c/b/a;
.super Lcom/instagram/api/k/a/b;
.source "ChangePasswordRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/k/a/b",
        "<",
        "Lcom/instagram/api/k/a/d;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/instagram/api/k/a/b;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/instagram/android/c/b/a;->a:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/instagram/android/c/b/a;->b:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lcom/instagram/android/c/b/a;->d:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method protected final a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/api/k/a/d;
    .locals 1
    .parameter

    .prologue
    .line 31
    invoke-static {p1}, Lcom/instagram/api/k/a/f;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/api/k/a/d;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Lcom/instagram/api/b/a;)V
    .locals 2
    .parameter

    .prologue
    .line 51
    const-string v0, "old_password"

    iget-object v1, p0, Lcom/instagram/android/c/b/a;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v0, "new_password1"

    iget-object v1, p0, Lcom/instagram/android/c/b/a;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v0, "new_password2"

    iget-object v1, p0, Lcom/instagram/android/c/b/a;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 46
    sget v0, Lcom/instagram/common/a/c/a;->a:I

    return v0
.end method

.method protected final d_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    const-string v0, "accounts/change_password/"

    return-object v0
.end method

.method public final e_()Z
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x1

    return v0
.end method
