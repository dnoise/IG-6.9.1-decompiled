.class public abstract Lcom/instagram/feed/a/a;
.super Lcom/instagram/feed/a/h;
.source "BasicMediaFeedRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/feed/a/h",
        "<",
        "Lcom/instagram/feed/a/i;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/instagram/feed/a/h;-><init>()V

    .line 14
    return-void
.end method

.method protected constructor <init>(Lcom/instagram/feed/f/a;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/instagram/feed/a/h;-><init>(Lcom/instagram/feed/f/a;Z)V

    .line 19
    return-void
.end method

.method private static b(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/feed/a/i;
    .locals 1
    .parameter

    .prologue
    .line 23
    invoke-static {p0}, Lcom/instagram/feed/a/j;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/feed/a/i;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final synthetic a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/api/k/a/d;
    .locals 1
    .parameter

    .prologue
    .line 11
    invoke-static {p1}, Lcom/instagram/feed/a/a;->b(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/feed/a/i;

    move-result-object v0

    return-object v0
.end method
