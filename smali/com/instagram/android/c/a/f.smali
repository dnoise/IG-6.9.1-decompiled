.class public final Lcom/instagram/android/c/a/f;
.super Lcom/instagram/api/k/a/c;
.source "MegaphoneActionRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/k/a/c",
        "<",
        "Lcom/instagram/api/k/a/d;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/instagram/feed/f/d;

.field private b:Lcom/instagram/android/c/a/g;


# direct methods
.method public constructor <init>(Lcom/instagram/feed/f/d;Lcom/instagram/android/c/a/g;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/instagram/api/k/a/c;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/instagram/android/c/a/f;->a:Lcom/instagram/feed/f/d;

    .line 41
    iput-object p2, p0, Lcom/instagram/android/c/a/f;->b:Lcom/instagram/android/c/a/g;

    .line 42
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/instagram/android/c/a/f;
    .locals 2
    .parameter

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/instagram/android/c/a/f;->a()Lcom/instagram/common/a/c/b;

    move-result-object v0

    const-string v1, "reason"

    invoke-virtual {v0, v1, p1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-object p0
.end method

.method protected final a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/api/k/a/d;
    .locals 1
    .parameter

    .prologue
    .line 67
    invoke-static {p1}, Lcom/instagram/api/k/a/f;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/api/k/a/d;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/instagram/common/a/c/b;)V
    .locals 2
    .parameter

    .prologue
    .line 46
    const-string v0, "type"

    iget-object v1, p0, Lcom/instagram/android/c/a/f;->a:Lcom/instagram/feed/f/d;

    invoke-virtual {v1}, Lcom/instagram/feed/f/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v0, "action"

    iget-object v1, p0, Lcom/instagram/android/c/a/f;->b:Lcom/instagram/android/c/a/g;

    invoke-virtual {v1}, Lcom/instagram/android/c/a/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 62
    sget v0, Lcom/instagram/common/a/c/a;->a:I

    return v0
.end method

.method protected final d_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    const-string v0, "megaphone/log/"

    return-object v0
.end method
