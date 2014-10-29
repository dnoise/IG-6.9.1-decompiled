.class final Lcom/instagram/common/analytics/w;
.super Ljava/lang/Object;
.source "ExtraBundle.java"

# interfaces
.implements Lcom/instagram/common/analytics/t;


# instance fields
.field private final a:[Ljava/lang/String;


# direct methods
.method private constructor <init>([Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    iput-object p1, p0, Lcom/instagram/common/analytics/w;->a:[Ljava/lang/String;

    .line 216
    return-void
.end method

.method synthetic constructor <init>([Ljava/lang/String;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 210
    invoke-direct {p0, p1}, Lcom/instagram/common/analytics/w;-><init>([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/fasterxml/jackson/a/h;)V
    .locals 4
    .parameter

    .prologue
    .line 220
    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/h;->writeStartArray()V

    .line 221
    iget-object v1, p0, Lcom/instagram/common/analytics/w;->a:[Ljava/lang/String;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 222
    invoke-virtual {p1, v3}, Lcom/fasterxml/jackson/a/h;->writeString(Ljava/lang/String;)V

    .line 221
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 224
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/h;->writeEndArray()V

    .line 225
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/instagram/common/analytics/w;->a:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
