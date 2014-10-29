.class public Lcom/instagram/realtimeclient/RealtimeSubscribedEvent;
.super Lcom/instagram/realtimeclient/RealtimeEvent;
.source "RealtimeSubscribedEvent.java"


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# instance fields
.field public mustRefresh:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "must_refresh"
    .end annotation
.end field

.field public sequence:Ljava/lang/String;

.field public topic:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/instagram/realtimeclient/RealtimeEvent;-><init>()V

    return-void
.end method
