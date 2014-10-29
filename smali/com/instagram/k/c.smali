.class final Lcom/instagram/k/c;
.super Ljava/lang/Object;
.source "AppDataUsageTracker.java"


# instance fields
.field private final a:J

.field private final b:J

.field private final c:J

.field private final d:Ljava/lang/String;


# direct methods
.method private constructor <init>(JJJLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-wide p1, p0, Lcom/instagram/k/c;->a:J

    .line 51
    iput-wide p3, p0, Lcom/instagram/k/c;->b:J

    .line 52
    iput-wide p5, p0, Lcom/instagram/k/c;->c:J

    .line 53
    iput-object p7, p0, Lcom/instagram/k/c;->d:Ljava/lang/String;

    .line 54
    return-void
.end method

.method synthetic constructor <init>(JJJLjava/lang/String;B)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct/range {p0 .. p7}, Lcom/instagram/k/c;-><init>(JJJLjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/instagram/k/c;)J
    .locals 2
    .parameter

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/instagram/k/c;->a:J

    return-wide v0
.end method

.method static synthetic b(Lcom/instagram/k/c;)J
    .locals 2
    .parameter

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/instagram/k/c;->b:J

    return-wide v0
.end method

.method static synthetic c(Lcom/instagram/k/c;)J
    .locals 2
    .parameter

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/instagram/k/c;->c:J

    return-wide v0
.end method

.method static synthetic d(Lcom/instagram/k/c;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/instagram/k/c;->d:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/fasterxml/jackson/a/h;)V
    .locals 5
    .parameter

    .prologue
    .line 57
    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/h;->writeStartObject()V

    .line 58
    const-string v0, "network_mode"

    iget-object v1, p0, Lcom/instagram/k/c;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v0, "bytes_received"

    iget-wide v1, p0, Lcom/instagram/k/c;->a:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/fasterxml/jackson/a/h;->writeNumberField(Ljava/lang/String;J)V

    .line 60
    const-string v0, "bytes_transmitted"

    iget-wide v1, p0, Lcom/instagram/k/c;->b:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/fasterxml/jackson/a/h;->writeNumberField(Ljava/lang/String;J)V

    .line 61
    const-string v0, "online_duration_in_s"

    iget-wide v1, p0, Lcom/instagram/k/c;->c:J

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {p1, v0, v1, v2}, Lcom/fasterxml/jackson/a/h;->writeNumberField(Ljava/lang/String;J)V

    .line 62
    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/h;->writeEndObject()V

    .line 63
    return-void
.end method
