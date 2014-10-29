.class public final Lcom/instagram/common/a/a/f;
.super Ljava/lang/Object;
.source "InlineRequestPerformer.java"

# interfaces
.implements Lcom/instagram/common/a/a/k;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Lcom/instagram/common/a/a/a;)Lcom/instagram/common/l/a/e;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResponseType::",
            "Lcom/instagram/common/a/a/m;",
            ">(",
            "Lcom/instagram/common/a/a/a",
            "<TResponseType;>;)",
            "Lcom/instagram/common/l/a/e",
            "<TResponseType;>;"
        }
    .end annotation

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/instagram/common/a/a/a;->i()V

    .line 34
    invoke-virtual {p0}, Lcom/instagram/common/a/a/a;->g()Lcom/instagram/common/l/a/e;

    move-result-object v0

    .line 35
    invoke-virtual {p0, v0}, Lcom/instagram/common/a/a/a;->a(Lcom/instagram/common/l/a/e;)V

    .line 36
    return-object v0
.end method


# virtual methods
.method public final a(Lcom/instagram/common/a/a/a;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResponseType::",
            "Lcom/instagram/common/a/a/m;",
            ">(",
            "Lcom/instagram/common/a/a/a",
            "<TResponseType;>;)V"
        }
    .end annotation

    .prologue
    .line 16
    invoke-static {p1}, Lcom/instagram/common/a/a/f;->b(Lcom/instagram/common/a/a/a;)Lcom/instagram/common/l/a/e;

    .line 17
    return-void
.end method
