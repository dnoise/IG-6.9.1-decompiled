.class final Lcom/instagram/common/analytics/v;
.super Ljava/lang/Object;
.source "ExtraBundle.java"

# interfaces
.implements Lcom/instagram/common/analytics/t;


# instance fields
.field private final a:J


# direct methods
.method private constructor <init>(J)V
    .locals 0
    .parameter

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput-wide p1, p0, Lcom/instagram/common/analytics/v;->a:J

    .line 140
    return-void
.end method

.method synthetic constructor <init>(JB)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 134
    invoke-direct {p0, p1, p2}, Lcom/instagram/common/analytics/v;-><init>(J)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/fasterxml/jackson/a/h;)V
    .locals 2
    .parameter

    .prologue
    .line 144
    iget-wide v0, p0, Lcom/instagram/common/analytics/v;->a:J

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeNumber(J)V

    .line 145
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 149
    iget-wide v0, p0, Lcom/instagram/common/analytics/v;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
