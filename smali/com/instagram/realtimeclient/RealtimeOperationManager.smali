.class public Lcom/instagram/realtimeclient/RealtimeOperationManager;
.super Ljava/lang/Object;
.source "RealtimeOperationManager.java"


# instance fields
.field private mOperationListener:Lcom/instagram/realtimeclient/RealtimeOperationManager$Listener;

.field private mPatchRange:Lcom/instagram/realtimeclient/RealtimePatchRange;

.field private final mStore:Lcom/instagram/realtimeclient/RealtimeStore;


# direct methods
.method public constructor <init>(Lcom/instagram/realtimeclient/RealtimeOperationManager$Listener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/instagram/realtimeclient/RealtimeOperationManager;->mOperationListener:Lcom/instagram/realtimeclient/RealtimeOperationManager$Listener;

    .line 20
    new-instance v0, Lcom/instagram/realtimeclient/RealtimeStore;

    invoke-direct {v0}, Lcom/instagram/realtimeclient/RealtimeStore;-><init>()V

    iput-object v0, p0, Lcom/instagram/realtimeclient/RealtimeOperationManager;->mStore:Lcom/instagram/realtimeclient/RealtimeStore;

    .line 21
    return-void
.end method

.method private sendOperationToListener(Lcom/instagram/realtimeclient/RealtimeOperation;)V
    .locals 2
    .parameter "operation"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeOperationManager;->mPatchRange:Lcom/instagram/realtimeclient/RealtimePatchRange;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/instagram/realtimeclient/RealtimeOperation;->op:Lcom/instagram/realtimeclient/RealtimeOperation$Type;

    sget-object v1, Lcom/instagram/realtimeclient/RealtimeOperation$Type;->add:Lcom/instagram/realtimeclient/RealtimeOperation$Type;

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/instagram/realtimeclient/RealtimeOperation;->timestamp:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/instagram/realtimeclient/RealtimeOperation;->path:Ljava/lang/String;

    const-string v1, "/direct_share/inbox"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeOperationManager;->mPatchRange:Lcom/instagram/realtimeclient/RealtimePatchRange;

    iget-object v1, p1, Lcom/instagram/realtimeclient/RealtimeOperation;->timestamp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/instagram/realtimeclient/RealtimePatchRange;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    :goto_0
    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeOperationManager;->mOperationListener:Lcom/instagram/realtimeclient/RealtimeOperationManager$Listener;

    invoke-interface {v0, p1}, Lcom/instagram/realtimeclient/RealtimeOperationManager$Listener;->onOperation(Lcom/instagram/realtimeclient/RealtimeOperation;)V

    goto :goto_0
.end method


# virtual methods
.method public clearOperations()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeOperationManager;->mStore:Lcom/instagram/realtimeclient/RealtimeStore;

    invoke-virtual {v0}, Lcom/instagram/realtimeclient/RealtimeStore;->clear()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/realtimeclient/RealtimeOperationManager;->mPatchRange:Lcom/instagram/realtimeclient/RealtimePatchRange;

    .line 54
    return-void
.end method

.method public getPatchRange()Lcom/instagram/realtimeclient/RealtimePatchRange;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeOperationManager;->mPatchRange:Lcom/instagram/realtimeclient/RealtimePatchRange;

    return-object v0
.end method

.method public handlePatchEvent(Lcom/instagram/realtimeclient/RealtimePatchEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 32
    iget-object v0, p1, Lcom/instagram/realtimeclient/RealtimePatchEvent;->operations:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/realtimeclient/RealtimeOperation;

    .line 33
    iget-object v2, p0, Lcom/instagram/realtimeclient/RealtimeOperationManager;->mStore:Lcom/instagram/realtimeclient/RealtimeStore;

    invoke-virtual {v2, v0}, Lcom/instagram/realtimeclient/RealtimeStore;->patchStoreWithOperation(Lcom/instagram/realtimeclient/RealtimeOperation;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 34
    invoke-direct {p0, v0}, Lcom/instagram/realtimeclient/RealtimeOperationManager;->sendOperationToListener(Lcom/instagram/realtimeclient/RealtimeOperation;)V

    goto :goto_0

    .line 37
    :cond_1
    return-void
.end method

.method public handlePatches(Ljava/util/Map;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/instagram/realtimeclient/RealtimePatchTuple;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p1, patches:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/instagram/realtimeclient/RealtimePatchTuple;>;"
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeOperationManager;->mPatchRange:Lcom/instagram/realtimeclient/RealtimePatchRange;

    if-nez v0, :cond_1

    .line 49
    :cond_0
    return-void

    .line 43
    :cond_1
    iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeOperationManager;->mStore:Lcom/instagram/realtimeclient/RealtimeStore;

    invoke-virtual {v0, p1}, Lcom/instagram/realtimeclient/RealtimeStore;->patchStoreWithPatches(Ljava/util/Map;)V

    .line 46
    iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeOperationManager;->mStore:Lcom/instagram/realtimeclient/RealtimeStore;

    invoke-virtual {v0}, Lcom/instagram/realtimeclient/RealtimeStore;->getOperations()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/realtimeclient/RealtimeOperation;

    .line 47
    invoke-direct {p0, v0}, Lcom/instagram/realtimeclient/RealtimeOperationManager;->sendOperationToListener(Lcom/instagram/realtimeclient/RealtimeOperation;)V

    goto :goto_0
.end method

.method public setPatchRange(Lcom/instagram/realtimeclient/RealtimePatchRange;)V
    .locals 0
    .parameter "range"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/instagram/realtimeclient/RealtimeOperationManager;->mPatchRange:Lcom/instagram/realtimeclient/RealtimePatchRange;

    .line 29
    return-void
.end method
