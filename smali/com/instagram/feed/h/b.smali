.class final Lcom/instagram/feed/h/b;
.super Ljava/lang/Object;
.source "VisibleItemTracker.java"

# interfaces
.implements Lcom/instagram/feed/h/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/instagram/feed/h/e",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instagram/feed/h/a;


# direct methods
.method constructor <init>(Lcom/instagram/feed/h/a;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/instagram/feed/h/b;->a:Lcom/instagram/feed/h/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;I)V"
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/instagram/feed/h/b;->a:Lcom/instagram/feed/h/a;

    iget-object v0, p0, Lcom/instagram/feed/h/b;->a:Lcom/instagram/feed/h/a;

    invoke-static {v0}, Lcom/instagram/feed/h/a;->a(Lcom/instagram/feed/h/a;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/instagram/feed/h/a;->a(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/instagram/feed/h/b;->a:Lcom/instagram/feed/h/a;

    invoke-static {v0}, Lcom/instagram/feed/h/a;->b(Lcom/instagram/feed/h/a;)Lcom/instagram/feed/h/d;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Lcom/instagram/feed/h/d;->b(Ljava/lang/Object;I)V

    .line 45
    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;I)V"
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lcom/instagram/feed/h/b;->a:Lcom/instagram/feed/h/a;

    iget-object v0, p0, Lcom/instagram/feed/h/b;->a:Lcom/instagram/feed/h/a;

    invoke-static {v0}, Lcom/instagram/feed/h/a;->c(Lcom/instagram/feed/h/a;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/instagram/feed/h/a;->a(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/instagram/feed/h/b;->a:Lcom/instagram/feed/h/a;

    invoke-static {v0}, Lcom/instagram/feed/h/a;->b(Lcom/instagram/feed/h/a;)Lcom/instagram/feed/h/d;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Lcom/instagram/feed/h/d;->a(Ljava/lang/Object;I)V

    .line 52
    :cond_0
    return-void
.end method
