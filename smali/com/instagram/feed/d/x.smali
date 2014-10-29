.class final Lcom/instagram/feed/d/x;
.super Ljava/lang/Object;
.source "MediaRenderCache.java"

# interfaces
.implements Lcom/instagram/common/j/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/instagram/common/j/e",
        "<",
        "Lcom/instagram/feed/d/t;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instagram/feed/d/w;


# direct methods
.method constructor <init>(Lcom/instagram/feed/d/w;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/instagram/feed/d/x;->a:Lcom/instagram/feed/d/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/instagram/feed/d/t;)V
    .locals 2
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/instagram/feed/d/x;->a:Lcom/instagram/feed/d/w;

    invoke-static {v0}, Lcom/instagram/feed/d/w;->a(Lcom/instagram/feed/d/w;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p1, Lcom/instagram/feed/d/t;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object v0, p0, Lcom/instagram/feed/d/x;->a:Lcom/instagram/feed/d/w;

    invoke-static {v0}, Lcom/instagram/feed/d/w;->b(Lcom/instagram/feed/d/w;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p1, Lcom/instagram/feed/d/t;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object v0, p0, Lcom/instagram/feed/d/x;->a:Lcom/instagram/feed/d/w;

    invoke-static {v0}, Lcom/instagram/feed/d/w;->c(Lcom/instagram/feed/d/w;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p1, Lcom/instagram/feed/d/t;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    return-void
.end method


# virtual methods
.method public final synthetic b(Lcom/instagram/common/j/a;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    check-cast p1, Lcom/instagram/feed/d/t;

    invoke-direct {p0, p1}, Lcom/instagram/feed/d/x;->a(Lcom/instagram/feed/d/t;)V

    return-void
.end method
