.class final Lcom/instagram/common/d/e;
.super Lcom/instagram/common/d/i;
.source "BaseIgBroadcastManager.java"


# instance fields
.field final synthetic a:Lcom/instagram/common/d/b;

.field final synthetic b:Lcom/instagram/common/d/d;


# direct methods
.method constructor <init>(Lcom/instagram/common/d/d;Ljava/util/Map;Lcom/instagram/common/d/b;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/instagram/common/d/e;->b:Lcom/instagram/common/d/d;

    iput-object p3, p0, Lcom/instagram/common/d/e;->a:Lcom/instagram/common/d/b;

    invoke-direct {p0, p2}, Lcom/instagram/common/d/i;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method protected final a()Z
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/instagram/common/d/e;->b:Lcom/instagram/common/d/d;

    invoke-virtual {v0}, Lcom/instagram/common/d/d;->a()Z

    move-result v0

    return v0
.end method
