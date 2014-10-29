.class final Lcom/instagram/common/a/f/c;
.super Ljava/lang/Object;
.source "ComponentListener.java"


# instance fields
.field private final a:Lcom/instagram/common/a/f/j;

.field private final b:J

.field private final c:J


# direct methods
.method public constructor <init>(Lcom/instagram/common/a/f/j;JJ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/instagram/common/a/f/c;->a:Lcom/instagram/common/a/f/j;

    .line 12
    iput-wide p2, p0, Lcom/instagram/common/a/f/c;->b:J

    .line 13
    iput-wide p4, p0, Lcom/instagram/common/a/f/c;->c:J

    .line 14
    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 5
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/instagram/common/a/f/c;->a:Lcom/instagram/common/a/f/j;

    iget-wide v1, p0, Lcom/instagram/common/a/f/c;->b:J

    add-long/2addr v1, p1

    iget-wide v3, p0, Lcom/instagram/common/a/f/c;->c:J

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    iget-wide v3, p0, Lcom/instagram/common/a/f/c;->c:J

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/instagram/common/a/f/j;->a(JJ)V

    .line 18
    return-void
.end method
