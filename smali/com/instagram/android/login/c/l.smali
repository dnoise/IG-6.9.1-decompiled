.class public final Lcom/instagram/android/login/c/l;
.super Lcom/instagram/api/k/a/c;
.source "QuickSandRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/k/a/c",
        "<",
        "Lcom/instagram/android/g/e;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/instagram/api/k/a/c;-><init>()V

    .line 25
    iput-object p2, p0, Lcom/instagram/android/login/c/l;->b:Ljava/lang/String;

    .line 26
    iput-object p1, p0, Lcom/instagram/android/login/c/l;->a:Ljava/lang/String;

    .line 27
    return-void
.end method

.method private static b(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/android/g/e;
    .locals 1
    .parameter

    .prologue
    .line 47
    invoke-static {p0}, Lcom/instagram/android/g/f;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/android/g/e;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final synthetic a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/api/k/a/d;
    .locals 1
    .parameter

    .prologue
    .line 14
    invoke-static {p1}, Lcom/instagram/android/login/c/l;->b(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/android/g/e;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/instagram/common/a/c/b;)V
    .locals 2
    .parameter

    .prologue
    .line 41
    const-string v0, "challenge_type"

    iget-object v1, p0, Lcom/instagram/android/login/c/l;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string v0, "guid"

    iget-object v1, p0, Lcom/instagram/android/login/c/l;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 31
    sget v0, Lcom/instagram/common/a/c/a;->c:I

    return v0
.end method

.method protected final d_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    const-string v0, "si/fetch_headers/"

    return-object v0
.end method
