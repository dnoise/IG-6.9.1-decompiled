.class public final Lcom/instagram/android/c/a/n;
.super Lcom/instagram/feed/a/h;
.source "PhotosOfYouFeedRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/feed/a/h",
        "<",
        "Lcom/instagram/android/c/a/o;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/instagram/feed/f/a;ZLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/instagram/feed/a/h;-><init>(Lcom/instagram/feed/f/a;Z)V

    .line 25
    iput-object p3, p0, Lcom/instagram/android/c/a/n;->a:Ljava/lang/String;

    .line 26
    return-void
.end method

.method private static b(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/android/c/a/o;
    .locals 1
    .parameter

    .prologue
    .line 35
    invoke-static {p0}, Lcom/instagram/android/c/a/p;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/android/c/a/o;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final synthetic a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/api/k/a/d;
    .locals 1
    .parameter

    .prologue
    .line 16
    invoke-static {p1}, Lcom/instagram/android/c/a/n;->b(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/android/c/a/o;

    move-result-object v0

    return-object v0
.end method

.method protected final e()Ljava/lang/String;
    .locals 4

    .prologue
    .line 30
    const-string v0, "usertags/%s/feed/"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/instagram/android/c/a/n;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/instagram/common/y/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
