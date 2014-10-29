.class final Lcom/instagram/common/analytics/s;
.super Ljava/lang/Object;
.source "ExtraBundle.java"

# interfaces
.implements Lcom/instagram/common/analytics/t;


# instance fields
.field private final a:D


# direct methods
.method private constructor <init>(D)V
    .locals 0
    .parameter

    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput-wide p1, p0, Lcom/instagram/common/analytics/s;->a:D

    .line 178
    return-void
.end method

.method synthetic constructor <init>(DB)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 172
    invoke-direct {p0, p1, p2}, Lcom/instagram/common/analytics/s;-><init>(D)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/fasterxml/jackson/a/h;)V
    .locals 2
    .parameter

    .prologue
    .line 182
    iget-wide v0, p0, Lcom/instagram/common/analytics/s;->a:D

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeNumber(D)V

    .line 183
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 187
    iget-wide v0, p0, Lcom/instagram/common/analytics/s;->a:D

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
