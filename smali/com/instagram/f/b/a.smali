.class public final Lcom/instagram/f/b/a;
.super Ljava/lang/Object;
.source "InboxCountInfo.java"


# instance fields
.field a:I

.field b:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, -0x1

    iput v0, p0, Lcom/instagram/f/b/a;->a:I

    .line 20
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/instagram/f/b/a;->b:J

    .line 21
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 24
    iget-wide v0, p0, Lcom/instagram/f/b/a;->b:J

    return-wide v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/instagram/f/b/a;->a:I

    return v0
.end method
