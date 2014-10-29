.class public final Lcom/instagram/f/a/a/d;
.super Lcom/instagram/api/k/a/b;
.source "ClearInboxNewCountRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/k/a/b",
        "<",
        "Lcom/instagram/f/a/a/e;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:J


# direct methods
.method public constructor <init>(J)V
    .locals 0
    .parameter

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/instagram/api/k/a/b;-><init>()V

    .line 17
    iput-wide p1, p0, Lcom/instagram/f/a/a/d;->a:J

    .line 18
    return-void
.end method

.method private static b(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/f/a/a/e;
    .locals 1
    .parameter

    .prologue
    .line 37
    invoke-static {p0}, Lcom/instagram/f/a/a/f;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/f/a/a/e;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final synthetic a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/api/k/a/d;
    .locals 1
    .parameter

    .prologue
    .line 12
    invoke-static {p1}, Lcom/instagram/f/a/a/d;->b(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/f/a/a/e;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Lcom/instagram/api/b/a;)V
    .locals 3
    .parameter

    .prologue
    .line 22
    const-string v0, "counted_up_to"

    iget-wide v1, p0, Lcom/instagram/f/a/a/d;->a:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method protected final d_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    const-string v0, "direct_share/clear_new_count/"

    return-object v0
.end method

.method public final e_()Z
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x1

    return v0
.end method
